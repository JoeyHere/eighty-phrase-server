Country.destroy_all
Question.destroy_all
Response.destroy_all
Room.destroy_all
Round.destroy_all
User.destroy_all
Vote.destroy_all

Country.create([
    {name: 'England 🏴󠁧󠁢󠁥󠁮󠁧󠁿  ', img_url: "https://upload.wikimedia.org/wikipedia/en/thumb/b/be/Flag_of_England.svg/1200px-Flag_of_England.svg.png"},
    {name: 'Wales 🏴', img_url: "https://upload.wikimedia.org/wikipedia/commons/d/dc/Flag_of_Wales.svg"},
    {name: 'Scotla󠁧󠁢󠁷󠁬󠁳󠁿nd 🏴󠁧󠁢󠁳󠁣󠁴󠁿', img_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/1/10/Flag_of_Scotland.svg/2000px-Flag_of_Scotland.svg.png"},
    {name: 'Italy 🇮🇹', img_url: "https://i.imgur.com/sW4qCQU.jpg"}
])

Question.create([
#England Questions
    {content: "What one native word means sticky / the ability to form sticky lumps?", answer: "claggy", fake_answer: "lumptious", country: Country.all[0]},
    {content: "What one native word is used to describe where Cows are kept?", answer: "shippon", fake_answer: "cowtel", country: Country.all[0]},
#Wales Questions
    {content: "What one native word is used to describe an unpleasent taste?", answer: "tawch", fake_answer: "stawn", country: Country.all[1]},
    {content: "What one native word is used to refer to a pair of trainers", answer: "daps", fake_answer: "nattys", country: Country.all[1]},
#Scotland Questions
    {content: "What phrase when translated to english, means your talking rubbish?", answer: "your bums out the window", fake_answer: "shouting at the moon", country: Country.all[2]},
    {content: "What one word refers to a person who whines or complains alot?", answer: "scunner", fake_answer: "lart", country: Country.all[2]},
#Italy Questions
    {content: "What phrase when translated to english, warns an opponent of an oncoming crushing defeat?", answer: "you will see green rats", fake_answer: "the pasta is dry", country: Country.all[3]},
    {content: "What phrase when translated to english, is used to describe a perfect, good looking and kind man?", answer: "blue prince", fake_answer: "grand bravardo", country: Country.all[3]},
    {content: "What phrase when translated to english, is used to describe being broke / out of money?", answer: "being at the green", fake_answer: "no tomatoes", country: Country.all[3]},
    {content: "What one native word is used to refer to a state of misery / yearning?", answer: "struggimento", fake_answer: "piuttosto", country: Country.all[3]},
    {content: "What one native word is used to refer to someone who sits at home watching tv all day?", answer: "pantofolaio", fake_answer: "moglie", country: Country.all[3]},
    {content: "What one native word is used to refer to the watermark left by a wet glass on a table?", answer: "culaccino", fake_answer: "nessuno", country: Country.all[3]}
#TEMPLATE (COPY FROM HERE)
    # {content: "", answer: "", fake_answer: "", country: Country.all[X]},
])

Room.create()
Room.create()

User.create([
    {name: "Chris", room: Room.first, score: 0, admin: true},
    {name: "Joey", room: Room.first, score: 0, admin: false},
    {name: "Shane", room: Room.first, score: 0, admin: false},
    {name: "Matt", room: Room.first, score: 0, admin: false},
    {name: "Minha", room: Room.first, score: 0, admin: false},
    {name: "Song", room: Room.first, score: 0, admin: false},
    {name: "Sam", room: Room.second, score: 0, admin: true},
    {name: "Jake", room: Room.second, score: 0, admin: false}
])

Round.create({room: Room.first, question: Question.first})