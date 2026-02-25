import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = TaskListViewModel()
    
    var body: some View {
        NavigationStack {
            VStack {
                // Header
                HStack {
                    Text("Tasks")
                        .font(.title2)
                        .fontWeight(.bold)
                    
                    Spacer()
                    
                    NavigationLink(destination: SettingsView()) {
                        Image(systemName: "gear")
                            .font(.title3)
                    }
                }
                .padding()
                
                // Task List
                TaskListView(tasks: viewModel.tasks)
                    .refreshable {
                        viewModel.loadTasks()
                    }
                
                // Add Task Button
                HStack {
                    Spacer()
                    
                    Button(action: {
                        // Add new task
                        viewModel.addTask(title: "New Task")
                    }) {
                        Image(systemName: "plus")
                            .font(.title3)
                            .foregroundColor(.white)
                            .frame(width: 44, height: 44)
                            .background(Color.blue)
                            .clipShape(Circle())
                    }
                    .padding(.trailing)
                }
                .padding(.bottom)
            }
            .alert("Error", isPresented: $viewModel.showAlert) {
                Button("OK") {}
            } message: {
                Text(viewModel.alertMessage)
            }
        }
    }
}

#Preview {
    ContentView()
}