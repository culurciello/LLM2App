import SwiftUI

struct MemberView: View {
    @State var member: Member

    var body: some View {
        VStack {
            Text(member.name)
                .font(.largeTitle)
            Image(member.imageName)
                .resizable()
                .scaledToFit()

            Form {
                ColorPicker("Hair Color", selection: $member.hairColor)
                ColorPicker("Eye Color", selection: $member.eyeColor)
                ColorPicker("Theme Color", selection: $member.themeColor)
            }
        }
    }
}


#Preview {
    MemberView(member: AppData.members[0])
}
