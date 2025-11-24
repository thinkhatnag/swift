import Foundation

extension UserDefaults {
    private enum Keys {
        static let todoItems = "todoItems_v1"
    }

    func saveItems(_ items: [TodoItem]) {
        if let data = try? JSONEncoder().encode(items) {
            set(data, forKey: Keys.todoItems)
        }
    }

    func loadItems() -> [TodoItem] {
        guard let data = data(forKey: Keys.todoItems) else { return [] }
        return (try? JSONDecoder().decode([TodoItem].self, from: data)) ?? []
    }
}
