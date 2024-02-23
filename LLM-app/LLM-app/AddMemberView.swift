import SwiftUI

struct AddMemberView: View {
    // Add State variables for new member's details
    @State private var newName = ""
    @State private var newImageName = "" // Assuming you'll have a way to select images

    // Add more state variables for hair, eye, & theme colors

    var body: some View {
        Form {
            TextField("Name", text: $newName)
            TextField("Image Name", text: $newImageName)

           // Add Pickers or other UI elements for selecting hair, eye, and theme colors
        }
        .navigationTitle("Add Member")
        // Add a button to save the new member
    }
}



#Preview {
    AddMemberView()
}
