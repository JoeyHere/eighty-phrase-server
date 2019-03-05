Country.destroy_all
Gameevent.destroy_all
Question.destroy_all
Response.destroy_all
Room.destroy_all
Round.destroy_all
User.destroy_all
Vote.destroy_all

Country.create([
    {name: 'England', img_url: "https://upload.wikimedia.org/wikipedia/en/thumb/b/be/Flag_of_England.svg/1200px-Flag_of_England.svg.png"},
    {name: 'Wales', img_url: "https://upload.wikimedia.org/wikipedia/commons/d/dc/Flag_of_Wales.svg"},
    {name: 'Scotland', img_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/1/10/Flag_of_Scotland.svg/2000px-Flag_of_Scotland.svg.png"}
])

Question.create([
    {content: "What one word means sticky / the ability to form sticky lumps?", answer: "claggy", fake_answer: "lumptious", country: Country.first},
    {content: "What one word is used to describe where Cows are kept?", answer: "Shippon", fake_answer: "Cowtel", country: Country.first},
    {content: "What one word is used to describe an unpleasent taste?", answer: "Tawch", fake_answer: "Stawn", country: Country.second},
    {content: "What one word is used to refer to a pair of trainers", answer: "Daps", fake_answer: "Nattys", country: Country.second},
    {content: "What phrase means your talking rubbish?", answer: "Your bums out the window", fake_answer: "Shouting at the moon", country: Country.third},
    {content: "What one word refers to a person who whines or complains alot?", answer: "Scunner", fake_answer: "Lart", country: Country.third}
])

Room.create({active: true})
Room.create({active: true})

User.create([
    { name: "Chris", room: Room.first, score: 0, admin: true},
    {name: "Joey", room: Room.first, score: 0, admin: false},
    {name: "Shane", room: Room.first, score: 0, admin: false},
    {name: "Matt", room: Room.first, score: 0, admin: false},
    { name: "Minha", room: Room.first, score: 0, admin: false},
    {name: "Song", room: Room.first, score: 0, admin: false},
    { name: "Sam", room: Room.second, score: 0, admin: true},
    {name: "Jake", room: Room.second, score: 0, admin: false}
])

Round.create({room: Room.first, question: Question.first})