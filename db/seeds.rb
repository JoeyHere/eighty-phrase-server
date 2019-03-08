Country.destroy_all
Question.destroy_all
Response.destroy_all
Room.destroy_all
Round.destroy_all
User.destroy_all
Vote.destroy_all

Country.create([
    {name: 'England 🦁', img_url: ""},
    {name: 'Wales 🐳', img_url: ""},
    {name: 'Scotla󠁧󠁢󠁷󠁬󠁳󠁿nd 🥃', img_url: ""},
    {name: 'Italy 🇮🇹', img_url: ""},
    {name: 'Ireland 🇮🇪', img_url: ""}
])

Question.create([
#England Questions
    {content: "What one native word means sticky / the ability to form sticky lumps?", answer: "claggy", fake_answer: "lumptious", country: Country.all[0]},
    {content: "What one native word is used to describe where Cows are kept?", answer: "shippon", fake_answer: "cowtel", country: Country.all[0]},
#Wales Questions
    {content: "What one native word is used to describe an unpleasent taste?", answer: "tawch", fake_answer: "stawn", country: Country.all[1]},
    {content: "What one native word is used to refer to a pair of trainers", answer: "daps", fake_answer: "nattys", country: Country.all[1]},
#Scotland Questions
    {content: "What 5 word phrase means your talking rubbish?", answer: "your bums out the window", fake_answer: "shouting loudly at the moon", country: Country.all[2]},
    {content: "What one word refers to a person who whines or complains alot?", answer: "scunner", fake_answer: "lart", country: Country.all[2]},
#Italy Questions
    {content: "What phrase when translated to english, warns an opponent of an oncoming crushing defeat?", answer: "you will see green rats", fake_answer: "the pasta is dry", country: Country.all[3]},
    {content: "What phrase when translated to english, is used to describe a perfect, good looking and kind man?", answer: "blue prince", fake_answer: "grand bravardo", country: Country.all[3]},
    {content: "What phrase when translated to english, is used to describe being broke / out of money?", answer: "being at the green", fake_answer: "no tomatoes", country: Country.all[3]},
    {content: "What one native word is used to refer to a state of misery / yearning?", answer: "struggimento", fake_answer: "piuttosto", country: Country.all[3]},
    {content: "What one native word is used to refer to someone who sits at home watching tv all day?", answer: "pantofolaio", fake_answer: "moglie", country: Country.all[3]},
    {content: "What one native word is used to refer to the watermark left by a wet glass on a table?", answer: "culaccino", fake_answer: "nessuno", country: Country.all[3]},
#Ireland Questions
    {content: "What 3 word phrase is used to describe days getting longer?", answer: "a grand stretch", fake_answer: "my guiness overflows", country: Country.all[4]},
    {content: "What 3 word phrase is used to describe being up to no good?", answer: "acting the maggot", fake_answer: "sleeping with dragons", country: Country.all[4]},
    {content: "What 3 word phrase is used to describe the atmosphere being excelent?", answer: "craic was ninety", fake_answer: "night twas green", country: Country.all[4]},
    {content: "What 4 word phrase is used to describe going on an extended drinking session?", answer: "going on the gargle", fake_answer: "diving in the shallow", country: Country.all[4]},
    {content: "What 4 word phrase is used to describe when things are going very well?", answer: "we're sucking diesel now", fake_answer: "lifes kicked the mare", country: Country.all[4]},
    {content: "What word would you call someone being sly?", answer: "sleeven", fake_answer: "shifthead", country: Country.all[4]}
#TEMPLATE (COPY FROM HERE)
    # {content: "", answer: "", fake_answer: "", country: Country.all[X]},
])

Room.create()

User.create({name: "Bot", room: Room.first, score: 69, admin: true})
