using StackApp.Models;
using StackApp.Utilities;
using System.ComponentModel;
using System.Runtime.CompilerServices;
using System.Windows.Input;

namespace StackApp.ViewModels
{
    public class MainViewModel : INotifyPropertyChanged
    {
        private readonly Models.Stack<string> _stack = new();
        private string _inputItem = string.Empty;
        private string _currentItem = string.Empty;
        
        public event PropertyChangedEventHandler? PropertyChanged;

        public string InputItem
        {
            get => _inputItem;
            set { _inputItem = value; OnPropertyChanged(); }
        }

        public string CurrentItem
        {
            get => _currentItem;
            private set { _currentItem = value; OnPropertyChanged(); }
        }

        public int Count => _stack.Count;
        public bool IsEmpty => _stack.IsEmpty;

        public ICommand PushCommand { get; }
        public ICommand PopCommand { get; }
        public ICommand ClearCommand { get; }

        public MainViewModel()
        {
            PushCommand = new RelayCommand(_ => Push(), _ => true);
            PopCommand = new RelayCommand(_ => Pop(), _ => !IsEmpty);
            ClearCommand = new RelayCommand(_ => Clear(), _ => !IsEmpty);
            UpdateProperties();
        }

        private void Push()
        {
            if (string.IsNullOrWhiteSpace(InputItem)) return;
            _stack.Push(InputItem);
            InputItem = string.Empty;
            UpdateProperties();
        }

        private void Pop()
        {
            try
            {
                var item = _stack.Pop();
                System.Windows.MessageBox.Show($"Извлечён: {item}");
            }
            catch (InvalidOperationException ex)
            {
                System.Windows.MessageBox.Show(ex.Message);
            }
            UpdateProperties();
        }

        private void Clear()
        {
            _stack.Clear();
            UpdateProperties();
        }

        private void UpdateProperties()
        {
            CurrentItem = _stack.CurrentItem?.ToString() ?? "Пусто";
            OnPropertyChanged(nameof(Count));
            OnPropertyChanged(nameof(IsEmpty));
        }

        protected virtual void OnPropertyChanged([CallerMemberName] string? propertyName = null)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }
    }
}