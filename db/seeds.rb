# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#Criatores

valter_performace = Performace.create!(
  nivel: 8,
  total_experience: 6060,
  amount_courses: 2,
  amount_exercises: 96
)

henrich_performace = Performace.create!(
  nivel: 10,
  total_experience: 8060,
  amount_courses: 3,
  amount_exercises: 126
)

paulo_performace = Performace.create!(
  nivel: 9,
  total_experience: 6082,
  amount_courses: 2,
  amount_exercises: 110
)

rick_performace = Performace.create!(
  nivel: 2,
  total_experience: 2022,
  amount_courses: 1,
  amount_exercises: 48
)

valter = User.create!(
  name:"Valter Barros",
  image: "https://scontent.ffor2-1.fna.fbcdn.net/v/t1.0-9/13232963_867235543399591_3714952430996557228_n.jpg?oh=6b81f021303b6d088eb0e725ce188fcd&oe=58A13888", 
  cpf:"352456465", 
  email:"valter@gmail.com", 
  password:"123456",

  performace:valter_performace
)

henrich = User.create!(
  name:"Henrich Jones",
  image:"http://rogalabs.com/assets/img/team/team-06_jones.jpg",
  cpf:"456465455",
  email:"henrich@gmail.com",
  password:"123456",

  performace:henrich_performace
)

paulo = User.create!(
  name:"João Paulo",
  image:"https://scontent.ffor2-1.fna.fbcdn.net/v/t1.0-9/13900192_808402369296146_4162341773477618642_n.jpg?oh=a841a90c3d64c55fa9bc4666eaebcb08&oe=589C4E9E",
  cpf:"456465455",
  email:"paulo@gmail.com",
  password:"123456",

  performace:paulo_performace
)

#TWD
rick = User.create!(
  name:"Rick Grimes",
  image:"http://vignette2.wikia.nocookie.net/walkingdead/images/d/d5/TWD_-_Rick_Grimes._LDOE.png/revision/latest?cb=20160505153116",
  cpf:"65465465465",
  email:"rick@gmail.com",
  password:"123456",

  performace:rick_performace
);

tech = Category.create!(
  title:"Tecnologia",
  description:"Tecnologia (do grego é um termo que envolve o conhecimento técnico e científico e a aplicação deste conhecimento através de sua transformação no uso de ferramentas",
  image:"http://images.hngn.com/data/images/full/134342/mr-robot.jpg"
)

buss = Category.create!(
  title:"Bussiness",
  description:"Em economia, negócio, é referido como um comércio ou empresa, que é administrado por pessoa(s) para captar recursos financeiros para gerar bens e serviços, e por consequência proporciona a circulação de capital de giro", 
  image:"http://1.bp.blogspot.com/-fm6wll52rbs/VYyL03-LdII/AAAAAAAAM2I/62z80RPLkdE/s1600/Pense-Fora-da-Caixa-Canal-Gera%25C3%25A7%25C3%25A3o-de-Valor-600.jpg"
)

sobre = Category.create!(
  title:"Sobrevivência",
  description:"As Técnicas de sobrevivência compõem um conjunto de práticas emergenciais que, compreendidas, treinadas e aplicadas em situações extremas, permitem ao indivíduo prolongar sua vida", 
  image:"https://s-media-cache-ak0.pinimg.com/236x/62/6c/a2/626ca29c1070775209885584f484e33a.jpg"
)

redes = Course.create!(
  title:"Redes",
  image:"http://www.linkcomp.com.br/wp-content/uploads/2014/12/Redes-e-Internet1.jpg",
  trailer:"https://www.youtube.com/embed/Ww9gJDzaf8g",
  description:"Uma rede de computadores é formada por um conjunto de máquinas eletrônicas com processadores capazes de trocar informações e partilhar recursos, interligados por um sub-sistema de comunicação, ou seja, é quando há pelo menos dois ou mais computadores" ,
  nivel:"Hard",
    workload:6,
    active:true,
    completed_edition:false,
    category: tech
)

rails = Course.create!(
  title:"Ruby on Rails",
  image:"https://pbs.twimg.com/profile_images/691206086955790336/CDMbA57p.png",
  trailer:"https://www.youtube.com/embed/US_P3mGdIu8",
    description:"Ruby on Rails é um framework livre que promete aumentar velocidade e facilidade no desenvolvimento de sites orientados a banco de dados (database-driven web sites), uma vez que é possível criar aplicações com base em estruturas pré-definidas." ,
  nivel:"Medium",
    workload:7,
    active:true,
  completed_edition:false,
    category:tech
)

empreen = Course.create!(
  title:"Abrir uma empressa", 
  image:"https://s-media-cache-ak0.pinimg.com/564x/9a/98/61/9a986184bf2d68d2f5045c9a85fcb629.jpg" ,
  trailer:"https://www.youtube.com/embed/HYQJTIkMMAg" , 
  description:"é o processo de iniciativa de implementar novos negócios ou mudanças em empresas já existentes. É um termo muito usado no âmbito empresarial e muitas vezes está relacionado",
  nivel:"Hard",
    workload:6, 
    active:true, 
    completed_edition:false, 
    category:buss
)

zombie = Course.create!(
  title:"Como fazer um machado caseiro", 
  image:"http://cdn.filtromag.com.br/imagens/filtro/ferramenta-sobrevivencia-survco.jpg ", 
  trailer:"https://www.youtube.com/embed/BN-34JfUrHY", 
  description:"A capacidade humana de construir coisas modernas é impressionante. Mas ver este cara criar um machado de pedra primitivo usando apenas tocos de pau, pedras e fogo é impressionante e estranhamente satisfatório", 
  nivel:"Hard",
    workload:10,
    active:true,
    completed_edition:false,
    category:sobre
)

registries = Registry.create!(
  active: true,
  finished_course:false,
  limit_date:"30/12/2016",
  user:valter,
  course:rails
)

registries = Registry.create!(
  active: true,
  finished_course:false, 
  limit_date:"01/12/2016",
  user:valter, course:redes
)

registries = Registry.create!(
  active:true, 
  finished_course:false, 
  limit_date:"02/11/2016 ",
  user:rick, 
  course:empreen
)

registries = Registry.create!(
  active:true, 
  finished_course:false, 
  limit_date:"10/11/2016 ",
  user:rick,
  course:rails
)

registries = Registry.create!(
  active:true,
  finished_course:false,
  limit_date:"01/01/2017 ",
  user:rick,
  course:zombie
)

registries = Registry.create!(
  active: true, 
  finished_course:false,
  limit_date:"30/11/2016",user:paulo,
  course:rails
)

registries = Registry.create!(
  active: true,
  finished_course:false,
  limit_date:"30/11/2016",
  user:paulo, 
  course:redes
)
