using System;
using System.Collections.Generic;
using System.Linq;

namespace StackApp.Models
{
    public class Stack<T>
    {
        private readonly List<T> _items = new();

        public T? CurrentItem => _items.Count > 0 ? _items.Last() : default; // T? вместо T
        public int Count => _items.Count;
        public bool IsEmpty => _items.Count == 0;

        public void Push(T item) => _items.Add(item);

        public T Pop()
        {
            if (IsEmpty)
                throw new InvalidOperationException("Стек пуст.");

            T item = _items.Last();
            _items.RemoveAt(_items.Count - 1);
            return item;
        }

        public void Clear() => _items.Clear();
    }
}