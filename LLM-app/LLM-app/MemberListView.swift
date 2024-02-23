import SwiftUI

struct MemberListView: View {
    @State private var showAddMember = false

    var body: some View {
        NavigationView {
            List(AppData.members) { member in
                NavigationLink(destination: MemberView(member: member)) {
                    HStack {
                        Image(member.imageName)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50, height: 50)
                        Text(member.name)
                            .foregroundColor(member.themeColor)
                    }
                }
            }
            .navigationTitle("Our Family")
            .toolbar {
                Button("Add Member") {
                    showAddMember = true
                }
            }
            .sheet(isPresented: $showAddMember) {
                AddMemberView()
            }
        }
    }
}

#Preview {
    MemberListView()
}
