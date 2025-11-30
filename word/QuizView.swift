import SwiftUI
import SwiftData

struct QuizView: View{
    @Environment(\.modelContext) var context
    @Query var words: [Word]
    @State var index = 0
    @State var showAnser = false
    
    var body: some View{
        VStack(spacing: 24){
            Spacer()
            
            if words.isEmpty{
                Text("単語が登録されていません")
            }else{
                Text(words[index].english)
                    .font(.largeTitle)
                
                Text(showAnser ? words[index].japanese: "ー")
                    .font(.largeTitle)
                
                Button {
                    showAnser.toggle()
                }label:{
                    Text(showAnser ? "解答を非表示":"解答を表示")
                }
                .font(.title)
                .foregroundStyle(.white)
                .padding(.vertical ,12)
                .frame(maxWidth: .infinity)
                .background(Color.orange)
                .clipShape(.capsule)
            }
            
            Spacer()
        }
        .padding(.horizontal, 32)
    }
}

#Preview {
    QuizView()
        .modelContainer(wordContainer)
}
