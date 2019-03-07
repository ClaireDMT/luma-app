Post.destroy_all
User.destroy_all
Company.destroy_all
Experience.destroy_all
Category.destroy_all

puts 'Creating companies...'

company1 = Company.create!(name: "Tesla", logo:'tesla_logo.png')
Company.create!(name: "SpaceX", logo:'spacex_logo.png')
Company.create!(name: "Doctolib", logo:'doctolib_logo.png')
Company.create!(name: "Luma", logo:'logo_luma_white.png')
company5 = Company.create(name: "Doctolib", logo: 'doctolib_logo.png')

puts 'Creating users...'

user1 = User.create!(email: "alex@yahoo.fr", password: "azerty", first_name: "Alex", last_name: "Cousin", company_id: company1.id, office_manager: true)
user2 = User.create!(email: "adamdylan.p@gmail.com", password: "azerty", first_name: "Dylan", last_name: "Adam", company_id: company1.id, office_manager: true)
user3 = User.create!(email: "claire.edith.demont@gmail.com", password: "azerty", first_name: "Claire", last_name: "Demont", company_id: company1.id, office_manager: true)
user4 = User.create!(email: "edouard.vaudour@icloud.com", password: "azerty", first_name: "Edouard", last_name: "Vaudour", company_id: company5.id, office_manager: true)
user5 = User.create!(email: "florent.lienard@lewagon.org", password: "azerty", first_name: "Florent", last_name: "Lienard", company_id: company5.id, office_manager: true)

puts 'Creating categories...'

cinema = Category.create!(name: 'Cinéma', emoji:'🎬')
jeux = Category.create!(name: 'Jeux', emoji:'🎯')
voyages = Category.create!(name: 'Voyages', emoji:'🗺')
nature = Category.create!(name: 'Nature', emoji:'🌿')
beaute = Category.create!(name: 'Beauté', emoji:'💅')
deco = Category.create!(name: 'Déco', emoji: '🖼')
culture = Category.create!(name: 'Culture', emoji: '🎭')
gastronomie = Category.create!(name: 'Fooding', emoji:'👨‍🍳')
sport = Category.create!(name: 'Sport', emoji: '🧗‍♀️')

puts 'Creating experiences...'

#Cinéma
Experience.create!(name: "Une année avec les meilleurs films",
  price: '49.90',
  public_price: '71.88',
  validity_date: '2019-12-31',
  description: "Un an d'abonnement à la plateforme de VOD Mubi et son catalogue de cinéma d'auteur, films étrangers et les classiques.",
  partner_logo: 'mubi_logo.png',
  category: cinema,
  partner_name: 'Mubi',
  partner_description: " Chaque jour, notre équipe de cinéphiles vous présente un film qu'elle adore, et vous disposez d'un mois pour le voir. Soit en permanence 30 fabuleux films à découvrir.",
  photo_experience: 'mubi_xp.jpg',
)

Experience.create!(name: "Un pass de 10 places de Cinéma",
  price: '59.90',
  public_price: '100',
  validity_date: '2019-12-31',
  description: "Profitez de 10 places de cinéma chez notre partenaire ",
  partner_logo: 'ugc_logo.png',
  category: cinema,
  partner_name: 'UGC',
  photo_experience: 'ugc_xp.jpg',
)

# Jeux
Experience.create!(name: 'Un Escape Game en équipe',
  price: '69',
  public_price: '110',
  validity_date: '2019-12-31',
  description: "HintHunt vous propose de vivre une aventure unique et hors du commun.
Enfermés dans une salle avec votre équipe de 3 à 5 joueurs, vous avez 60 minutes pour trouver le moyen de vous échapper !
A vous de trouver les indices cachés dans la salle et de résoudre ensemble les énigmes qui vous permettront de vous évader ! Une expérience inoubliable dans laquelle rapidité, logique, et esprit d'équipe seront vos meilleurs alliés",
  partner_logo: 'hinthunt_logo.png',
  category: jeux,
  partner_name: 'HintHunt',
  photo_experience: 'hinthunt_xp.jpg',
)

Experience.create!(name: 'Une expérience unique de Réalité Virtuelle',
  price: '19.90',
  public_price: '29.90',
  validity_date: '2019-12-31',
  description: "Incarna est une expérience à part qui vous plongera en plein coeur d'un univers onirique dont vous et vos amis êtes les héros !
Prenez rendez-vous dans l'un de nos centres, venez nous rejoindre sur place et laissez-nous vous équiper de notre matériel de réalité virtuelle. Vous serez alors projetés dans une dimension étrange et mystérieuse préparée tout spécialement pour évaluer vos compétences et déterminer si vous avez ce qu'il faut pour devenir un explorateur !
Ce baptême du feu ne sera pas de tout repos, mais il ne sera que la première étape d'une aventure épique riche en rebondissements. Chaque nouvel épisode d'Incarna vous entraînera plus profondément dans son univers, à la découverte de ses étranges habitants, de son étonnante histoire et de ses troublants mystères...",
  partner_logo: 'incarna_logo.jpg',
  category: jeux,
  partner_name: 'Incarana',
  photo_experience: 'incarna_xp.jpg',
)

#Voyages
Experience.create!(name: "Un séjour inoubliable",
  price: '350',
  public_price: '500',
  validity_date: '2019-12-31',
  description: "Choisissez parmi plus de 600 destinations avec notre partenaire",
  partner_logo: 'evaneos_logo.png',
  category: voyages,
  partner_name: 'Evaneos',
  photo_experience: 'evaneos_xp.jpg',
)

Experience.create!(name: "Un week-end en amoureux",
  price: '220',
  public_price: '350',
  validity_date: '2019-12-31',
  description: "Profitez d'un week-end pour 2 en France dans le lieu de votre choix",
  partner_logo: 'weekendr_logo.jpeg',
  category: voyages,
  partner_name: 'Weekendr',
  photo_experience: 'weekendr_xp.jpg',
)

#Nature
Experience.create!(name: "Adoptez un corail",
  price: '20',
  public_price: '30',
  validity_date: '2019-12-31',
  description: "Chaque geste compte. En adoptant un corail, vous contribuez à la préservation de l’environnement et vous soutenez les populations locales qui dépendent de l’océan pour survivre. C’est simple, facile, et utile 🐬",
  partner_logo: 'coralguardian_logo.png',
  category: nature,
  partner_name: 'Coral Guardian',
  photo_experience: 'coralguardian_xp.jpg',
)

Experience.create!(name: "Offrez un arbre",
  price: '69',
  public_price: '87',
  validity_date: '2019-12-31',
  description: "Obtenez 3 Chênes sessile. En achetant des arbres, vous devenez propriétaire d’un actif forestier. L’arbre, en grandissant, est un bien qui prend intrinsèquement de la valeur avec le temps indépendamment de la demande ou du cours du bois 🌳",
  partner_logo: 'ecotree_logo.svg',
  category: nature,
  partner_name: 'Ecotree',
  photo_experience: 'ecotree_xp.jpg',
)

Experience.create!(name: "Un cactus personnalisé",
  price: '19',
  public_price: '29',
  validity_date: '2019-12-31',
  description: "Fait maison, cette collection arbore des motifs doux et chic … pour dire des mots doux avec un cactus, une plante ou une fleur ou bien pour apporter une petite touche exotique à votre intérieur. Ce modèle PASSIONNÉE est parfait pour végétaliser votre chez-vous, à votre image !",
  partner_logo: 'aycactus_logo.png',
  category: nature,
  partner_name: 'Ay Cactus',
  photo_experience: 'aycactus_xp.jpg',
)

Experience.create!(name: "L'oiseau de paradis: une belle plante livrée chez vous",
  price: '29',
  public_price: '49',
  validity_date: '2019-12-31',
  description: "L’Oiseau du Paradis est une plante incroyable au charisme fou. Originaire d’Afrique du Sud, cette plante exotique de la famille du bananier pousse dans son environnement naturel généralement au bord de l’eau. Cette superbe plante au feuillage large et vert intense doit son surnom à sa fleur remarquable dont la forme et les couleurs flamboyantes rappellent la tête d’un oiseau tropical. Nous l’adorons, c’est un must : belle, super facile à vivre, hyper robuste. Effet WOW assuré dans tous les intérieurs !
",
  partner_logo: 'akagreen_logo.png',
  category: nature,
  partner_name: 'Akagreen',
  photo_experience: 'akagreen_xp.jpg',
)

#Beauté
Experience.create!(name: "Votre box beauté",
  price: '8',
  public_price: '13',
  validity_date: '2019-12-31',
  description: "Que vous cherchiez la parfaite crème qui apaisera votre peau sensible, le spray cheveux qui saura dompter votre crinière ou le rouge à lèvres de vos rêves, on s’occupe de tout ! Tous nos produits sont sélectionnés avec soin 💅",
  partner_logo: 'birchbox_logo.png',
  category: beaute,
  partner_name: 'Birchbox',
  photo_experience: 'birchbox_xp.jpg',
)

Experience.create!(name: "Votre kit voyage de soin pour homme",
  price: '10',
  public_price: '15',
  validity_date: '2019-12-31',
  description: "Que vous cherchiez la parfaite crème qui apaisera votre peau sensible, le spray cheveux qui saura dompter votre crinière ou le rouge à lèvres de vos rêves, on s’occupe de tout ! Tous nos produits sont sélectionnés avec soin 🧔🏻",
  partner_logo: 'horace_logo.jpg',
  category: beaute,
  partner_name: 'Horace',
  photo_experience: 'horace_xp.jpg',
)

#Déco
Experience.create!(name: "Votre abonnement mensuel de fleurs",
  price: '19.99',
  public_price: '38.99',
  validity_date: '2019-12-31',
  description: "Quel bonheur de fleurir sa vie simplement, et en toute saison ! Chaque mois, offrez ou recevez un à quatre bouquets de fleurs fraîchement cueillies. Des créations uniques, composées avec soin par nos fleuristes, spécialement pour nos abonnés 💐",
  partner_logo: 'bergamotte_logo.jpg',
  category: deco,
  partner_name: 'Bergamotte',
  photo_experience: 'bergamotte_xp.jpg',
)

Experience.create!(name: "Votre oeuvre d'art préférée",
  price: '100',
  public_price: '120',
  validity_date: '2019-12-31',
  description: "Un bon pour choisir votre oeuvre d'art préféré avec livraison offerte!",
  partner_logo: 'artsper_logo.jpg',
  category: deco,
  partner_name: 'Artsper',
  photo_experience: 'artsper_xp.jpg',
)

Experience.create!(name: "Une photographie en édition limitée",
  price: '75',
  public_price: '89',
  validity_date: '2019-12-31',
  description: "Photographie d'art en format classique, 24x32cm avec cadre noir. Œuvre en édition limitée et numérotée avec certificat d'authenticité",
  partner_logo: 'yellowkorner_logo.jpg',
  category: deco,
  partner_name: 'Yellowkorner',
  photo_experience: 'yellowkorner_xp.jpg',
)

#Presse
# Experience.create!(name: "Un abonnement annuel pour Usbek & Rica",
#   price: '18',
#   public_price: '24',
#   validity_date: '2019-12-31',
#   description: "Trois numéros du magazine. Le magazine qui explore le futur. Tous les futurs : ceux qui nous font peur et ceux dont on rêve.",
#   partner_logo: 'usbekrica_logo.png',
#   category: presse,
#   partner_name: 'Usbek & Rica',
#   photo_experience: 'usbekrica_xp.jpg',
# )

#Culture
Experience.create!(name: "Le meilleur de la culture",
  price: '18',
  public_price: '25',
  validity_date: '2019-12-31',
  description: "Découvrez le pass culturel parisien! 🎭",
  partner_logo: 'culturesecrets_logo.png',
  category: culture,
  partner_name: 'CultureSecrets',
  photo_experience: 'culturesecrets_xp.jpg',
)

Experience.create!(name: "Une box 6 spectacles",
  price: '69',
  public_price: '99',
  validity_date: '2019-12-31',
  description: "Le cadeau spectacle par excellence ! Offrez (ou offrez-vous) ce pack contenant 6 places qui vous permettra de choisir par plus de 1100 spectacles par mois, dans l'une de nos 300 salles partenaires dont les plus prestigieuses.",
  partner_logo: 'otheatro_logo.png',
  category: culture,
  partner_name: 'Otheatro',
  photo_experience: 'otheatro_xp.jpg',
)

# #Gastronomie
Experience.create!(name: "Mon panier de fruits et légumes",
  price: '20',
  public_price: '30',
  validity_date: '2019-12-31',
  description: "Des fruits et légumes de saison",
  partner_logo: 'laruche_logo.png',
  category: culture,
  partner_name: 'La ruche qui dit oui',
  photo_experience: 'laruche_xp.jpg',
)

Experience.create!(name: "Une formation de 2h sur le café",
  price: '60',
  public_price: '72',
  validity_date: '2019-12-31',
  description: "Nous vous proposons un atelier Culture Café de 3 heures qui vous permettra de parcourir les essentiels de cet univers à travers l'histoire du café de spécialité, la chaîne de ses métiers, beaucoup d’images & une dégustation de nombreux cafés !",
  partner_logo: 'lomi_logo.jpg',
  category: gastronomie,
  partner_name: 'Café Lomi',
  photo_experience: 'lomi_xp.jpg',
)

Experience.create!(name: "Un abonnement pour une box de vin",
  price: '50',
  public_price: '71.67',
  validity_date: '2019-12-31',
  description: "Que vous cherchiez la parfaite crème qui apaisera votre peau sensible, le spray cheveux qui saura dompter votre crinière ou le rouge à lèvres de vos rêves, on s’occupe de tout ! Tous nos produits sont sélectionnés avec soin.",
  partner_logo: 'petitballon_logo.jpg',
  category: gastronomie,
  partner_name: 'Le Petit Ballon',
  photo_experience: 'petitballon_xp.jpg',
)

Experience.create!(name: "Le meilleur du café livré chez vous",
  price: '4.90',
  public_price: '9.90',
  validity_date: '2019-12-31',
  description: "Que vous cherchiez la parfaite crème qui apaisera votre peau sensible, le spray cheveux qui saura dompter votre crinière ou le rouge à lèvres de vos rêves, on s’occupe de tout ! Tous nos produits sont sélectionnés avec soin.",
  partner_logo: 'kawa.png',
  category: gastronomie,
  partner_name: 'Kawa',
  photo_experience: 'kawa_xp.jpg',
)

#Sport
Experience.create!(name: "Un mois d'abonnement dans vos salles favorites de sport",
  price: '14.99',
  public_price: '19.99',
  validity_date: '2019-12-31',
  description: "Un mois de training",
  partner_logo: 'gympass_logo.png',
  category: sport,
  partner_name: 'Gympass',
  photo_experience: 'gympass_xp.jpg',
)

Experience.create!(name: "Une session pour le sport de votre choix avec un coach",
  price: '20',
  public_price: '40',
  validity_date: '2019-12-31',
  description: "Bénéficiez d'une séance de sport d'1h avec un coach personnel!",
  partner_logo: 'trainme_logo.png',
  category: sport,
  partner_name: 'Trainme',
  photo_experience: 'trainme_xp.jpg',
)

Experience.create!(name: "Une session d'escalade",
  price: '7',
  public_price: '14',
  validity_date: '2019-12-31',
  description: "Bénéficiez d'une séance d'escalade dans l'une des dix salles de notre partenaire Arkose!",
  partner_logo: 'arkose_logo.png',
  category: sport,
  partner_name: 'Arkose',
  photo_experience: 'arkose_xp.jpg',
)



puts 'Done!'
