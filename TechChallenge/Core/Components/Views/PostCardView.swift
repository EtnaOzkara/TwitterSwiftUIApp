import SwiftUI
import Firebase // Assuming you have Firebase imported for Timestamp

struct PostCardView: View {
    let message: Message

    
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss" // Modify the date format as needed
        return formatter
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .top, spacing: 12) {
                Circle()
                    .frame(width: 56, height: 56)
                    .foregroundColor(Color(.systemPink))
                
                VStack(alignment: .leading, spacing: 4) {
                    HStack {
                        if let user = message.user {
                            Text(user.username)
                                .font(.subheadline)
                                .bold()
                            let timestamp = message.timestamp.dateValue()
                                Text(self.formattedTimestamp(timestamp))
                                    .foregroundColor(.pink)
                                    .font(.caption)
                            
                        }
                    }
                    
                    Text(message.caption)
                        .font(.subheadline)
                        .multilineTextAlignment(.leading)
                }
            }
            
            HStack {
                Spacer()
                Button {
                    print("comment")
                } label: {
                    Image(systemName: "bubble.left")
                        .font(.subheadline)
                }
                Text("0")
                    .font(.subheadline)
                    .padding(.leading, 2)
                
                Spacer()
                Button {
                    print("like")
                } label: {
                    Image(systemName: "heart")
                        .font(.subheadline)
                }
                Text(String(message.likes))
                    .font(.subheadline)
                    .padding(.leading, 2)
                
                Spacer()
            }
            .padding()
            .foregroundColor(.pink)
            Divider()
        }
    }
    
    func formattedTimestamp(_ timestamp: Date) -> String {
        return dateFormatter.string(from: timestamp)
    }
}
