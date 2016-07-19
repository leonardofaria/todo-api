Task.delete_all
List.delete_all
Task.reset_autoincrement
List.reset_autoincrement

puts 'Creating sample lists'
colors = ['54b2a1', '95d5cf', '809bbe', '98d2f3', '80bf86', 'a3d49f']
['Todo', 'Movies', 'Supermarket'].each_with_index do |list, index|
	List.find_or_create_by(name: list, color: colors[index])
end

puts 'Creating sample tasks'
['Nathan\'s Assignment', 'Go to Meetup'].each do |task|
	Task.find_or_create_by(name: task, list: List.where(name: 'Todo').first)
end

['The Godfather', 'Star Wars'].each do |task|
	Task.find_or_create_by(name: task, list: List.where(name: 'Movies').first)
end

['Milk', 'Bread', 'Butter'].each do |task|
	Task.find_or_create_by(name: task, list: List.where(name: 'Supermarket').first)
end
