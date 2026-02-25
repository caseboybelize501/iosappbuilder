import Foundation
import Combine

class TaskListViewModel: ObservableObject {
    @Published var tasks: [Task] = []
    @Published var showAlert = false
    @Published var alertMessage = ""
    
    private var cancellables = Set<Cancelleable>()
    
    init() {
        loadTasks()
    }
    
    func loadTasks() {
        // In a real app, this would fetch from Core Data or SwiftData
        tasks = Task.sampleData()
    }
    
    func addTask(title: String) {
        guard !title.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty else {
            showAlert(message: "Task title cannot be empty")
            return
        }
        
        let newTask = Task(title: title)
        tasks.append(newTask)
        
        // Haptic feedback
        let impact = UIImpactFeedbackGenerator(style: .medium)
        impact.impactOccurred()
    }
    
    func toggleTaskCompletion(_ task: Task) {
        guard let index = tasks.firstIndex(where: { $0 === task }) else { return }
        
        tasks[index].isCompleted.toggle()
        
        // Haptic feedback
        let impact = UIImpactFeedbackGenerator(style: .light)
        impact.impactOccurred()
    }
    
    func deleteTask(_ task: Task) {
        guard let index = tasks.firstIndex(where: { $0 === task }) else { return }
        
        tasks.remove(at: index)
        
        // Haptic feedback
        let impact = UIImpactFeedbackGenerator(style: .medium)
        impact.impactOccurred()
    }
    
    func showAlert(message: String) {
        alertMessage = message
        showAlert = true
    }
}

// MARK: - Error Handling
extension TaskListViewModel {
    func handle(error: Error) {
        showAlert(message: error.localizedDescription)
    }
}