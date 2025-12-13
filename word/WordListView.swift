import SwiftUI
import SwiftData

struct WordListView: View {
    @Environment(\.modelContext) var Context
    @Query var words:[Word]
    
    var body: some View {
        List{
            if words.isEmpty{
                Text("登録されている単語がありません")
            }
            ForEach(words){ word in
                HStack{
                    Text(word.english)
                    Spacer()
                    Text(word.japanese)
                    
                }
            }
        }
        .navigationTitle("単語一覧")
        .toolbar{
            ToolbarItem(placement: .navigationBarTrailing){
                NavigationLink{
                    addWordView()
                }label:{
                    Image(systemName: "plus")
                }
            }
        }
    }
}

#Preview {
    WordListView()
        .modelContainer(wordContainer)
}
