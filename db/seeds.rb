# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database..."
Location.destroy_all
Poisson.destroy_all
User.destroy_all

puts "Creating users..."
annie = User.new({email: "annie@yopmail.com", password: "123456", prenom: "Annie", address: "27 rue d'Orsel, 75018 Paris"})
lucie = User.new({email: "lucie@yopmail.com", password: "123456", prenom: "Lucie", address: "56 rue du Palais Gallien, 33000 Bordeaux"})
julie = User.new({email: "julie@yopmail.com", password: "123456", prenom: "Julie", address: "40 rue Châteauneuf, 06000 Nice"})
paulie = User.new({email: "paulie@yopmail.com", password: "123456", prenom: "Paulie", address: "11 rue Constantine, 69001 Lyon"})
annie.save!
lucie.save!
julie.save!
paulie.save!
puts "Users Finished!"

puts "Creating poissons..."
nemo = Poisson.new({name: "Nemo", category: "Poisson clown", price: 10, user: annie, description: "Le poisson-clown Amphiprion ocellaris est le plus populaire des poissons-clowns. Il vit dans les zones tropicales : lagons et récifs côtiers entre 1 et 15 mètres de profondeur. Il est bien connu pour ses couleurs et son mode de vie original : vivre en symbiose avec les anémones de mer leur procurant protection.", picture_url:"https://www.buildyouraquarium.com/wp-content/uploads/2019/03/veiltail-goldfish.jpg"})
nemo.save!
jacky = Poisson.new({name: "Jacky", category: "Poisson chat", price: 8, user: lucie, description: "Le chat, Felis catus, est un félin domestique apprécié pour son charme indépendant et son comportement unique. Doté d'une agilité impressionnante, le chat possède un corps élégant, des yeux perçants et une large gamme de pelages et de couleurs qui ajoutent à sa diversité.", picture_url:"https://t3.ftcdn.net/jpg/05/66/98/54/360_F_566985432_rkFN4MBsAnjNJjIXCKgitq0K1l4Ksz44.jpg"})
jacky.save!
lego = Poisson.new({name: "Lego", category: "Poisson chien", price: 7, user: annie, description: "Le chien, Canis lupus familiaris, est un mammifère domestiqué et fidèle qui entretient une relation profonde avec les êtres humains depuis des milliers d'années. Doté d'une grande diversité de races, de tailles et de caractéristiques physiques, le chien a été élevé pour divers rôles, allant du compagnon de famille au chien de travail ou de service.", picture_url:"https://30a.com/wp-content/uploads/2021/12/Untitled-design-2.png"})
lego.save!
lola = Poisson.new({name: "Lola", category: "Poisson eau", price: 12, user: julie, description: "L'eau, élément fondamental de la nature, est un liquide transparent et incolore qui recouvre une grande partie de la surface de la Terre. Elle joue un rôle crucial dans la survie de tous les êtres vivants, offrant l'hydratation nécessaire pour maintenir les processus biologiques essentiels. ", picture_url:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRCW6o7RVOyRjPNpRNTnRwuRP_1JxWzl-WEWg&usqp=CAU"})
lola.save!
philippe = Poisson.new({name: "Philippe", category: "Poisson clown", price: 11, user: annie, description: "Le poisson-clown Amphiprion ocellaris est le plus populaire des poissons-clowns. Il vit dans les zones tropicales : lagons et récifs côtiers entre 1 et 15 mètres de profondeur. Il est bien connu pour ses couleurs et son mode de vie original : vivre en symbiose avec les anémones de mer leur procurant protection.", picture_url:"https://wallpapers.com/images/hd/red-discus-beautiful-fish-261n28t6x6pk7r6m.jpg"})
philippe.save!
albert = Poisson.new({name: "Albert", category: "Poisson chien", price: 6, user: paulie, description: "Le chien, Canis lupus familiaris, est un mammifère domestiqué et fidèle qui entretient une relation profonde avec les êtres humains depuis des milliers d'années. Doté d'une grande diversité de races, de tailles et de caractéristiques physiques, le chien a été élevé pour divers rôles, allant du compagnon de famille au chien de travail ou de service.", picture_url:"https://petsnurturing.com/wp-content/uploads/2019/08/Beautiful-Fish6-e1567063068711.jpg"})
albert.save!
vilo = Poisson.new({name: "Vilo", category: "Poisson chat", price: 9, user: paulie, description: "Le chat, Felis catus, est un félin domestique apprécié pour son charme indépendant et son comportement unique. Doté d'une agilité impressionnante, le chat possède un corps élégant, des yeux perçants et une large gamme de pelages et de couleurs qui ajoutent à sa diversité.", picture_url:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRCW6o7RVOyRjPNpRNTnRwuRP_1JxWzl-WEWg&usqp=CAU"})
vilo.save!
hector = Poisson.new({name: "Hector", category: "Poisson clown", price: 13, user: julie, description: "Le poisson-clown Amphiprion ocellaris est le plus populaire des poissons-clowns. Il vit dans les zones tropicales : lagons et récifs côtiers entre 1 et 15 mètres de profondeur. Il est bien connu pour ses couleurs et son mode de vie original : vivre en symbiose avec les anémones de mer leur procurant protection.", picture_url:"https://i.pinimg.com/564x/21/96/8e/21968e804cde09008f7ce56bd623a54f.jpg"})
hector.save!
jacques = Poisson.new({name: "Jacques", category: "Poisson eau", price: 10, user: lucie, description: "L'eau, élément fondamental de la nature, est un liquide transparent et incolore qui recouvre une grande partie de la surface de la Terre. Elle joue un rôle crucial dans la survie de tous les êtres vivants, offrant l'hydratation nécessaire pour maintenir les processus biologiques essentiels. ", picture_url:"https://www.christineabroad.com/images//2020/03/Flowerhorn-Cichlid.jpg"})
jacques.save!
thiarra = Poisson.new({name: "Thiarra", category: "Poisson clown", price: 15, user: annie, description: "Le poisson-clown Amphiprion ocellaris est le plus populaire des poissons-clowns. Il vit dans les zones tropicales : lagons et récifs côtiers entre 1 et 15 mètres de profondeur. Il est bien connu pour ses couleurs et son mode de vie original : vivre en symbiose avec les anémones de mer leur procurant protection.", picture_url:"https://5.imimg.com/data5/RF/RD/MY-19422102/img-20171120-wa0027-500x500.jpg"})
thiarra.save!
puts "Poissons Finished!"
