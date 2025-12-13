import SwiftData
import SwiftUI

struct addWordView: View {
    @Environment(\.dismiss) var dismiss
    @Environment(\.modelContext) var Context
    @State var Japanese = ""
    @State var English = ""
    @State var showalert  = false

    var body: some View {
        VStack(spacing: 16) {
            Spacer()
            TextField("英単語", text: $English)
                .textFieldStyle(.roundedBorder)
            TextField("意味", text: $English)
                .textFieldStyle(.roundedBorder)

            Button {
                save()
            } label: {
                Text("保存")
            }
            .font(.title)
            .foregroundStyle(.white)
            .padding(.vertical, 12)
            .frame(maxWidth:.infinity)
            .background(Color.orange)
            .clipShape(.capsule)
            
            Spacer()
        }
        .padding()
        .alert("両方の欄に入力してください", isPresented: $showalert){
            Button("OK",role: .cancel) {}
        }
    }
    func save() {
        if English.isEmpty || Japanese.isEmpty {
            showalert = true
            return
        }
        let word = Word(english: English, japanese: Japanese)
        Context.insert(word)
        dismiss()
        
    }
}

#Preview {
    addWordView()
}
