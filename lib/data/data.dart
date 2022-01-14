import 'package:facebook_web/models/model.dart';

/* Logged user */
User actualUser = User(
    name: 'Aline Fernandes',
    urlImage:
        'https://64.media.tumblr.com/523ce7f841922fc6f3bd359d9a50f4db/12ea74be1f06bd26-08/s540x810/fa4c4a1002b489ee70a671f2a66e99df69aad954.jpg');

/*Users List*/
List<User> onlineUsers = [
  User(
    name: 'Ana Catarina Oliveira',
    urlImage:
        'https://image.freepik.com/fotos-gratis/foto-de-estudio-de-um-lindo-turista-satisfeito-passando-as-ferias-de-verao-no-exterior-sorrindo-enquanto-faz-uma-excursao-maravilhosa-e-usando-oculos-escuros_273609-17523.jpg',
  ),
  User(
    name: 'Fernando de Castro Lima da Silva',
    urlImage:
        'https://media.istockphoto.com/photos/millennial-male-team-leader-organize-virtual-workshop-with-employees-picture-id1300972574?b=1&k=20&m=1300972574&s=170667a&w=0&h=2nBGC7tr0kWIU8zRQ3dMg-C5JLo9H2sNUuDjQ5mlYfo=',
  ),
  User(
    name: 'Beatriz Pereira',
    urlImage:
        'https://image.freepik.com/fotos-gratis/agradavel-jovem-alegre-morena-de-cabelos-cacheados-jogando-a-cabeca-para-tras-enquanto-ria-alegremente-com-os-olhos-fechados-em-pe-sobre-a-parede-azul-com-as-maos-para-baixo_295783-11256.jpg',
  ),
  User(
    name: 'Simone Nascimento',
    urlImage:
        'https://image.freepik.com/fotos-gratis/mulher-de-tiro-medio-segurando-o-telefone_23-2148939284.jpg',
  ),
  User(
    name: 'Michel Teles Gadelha',
    urlImage:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSTrFWpxZfBk-U1IC9U-gwolMQcQV2LRf2khQ&usqp=CAU',
  ),
  User(
    name: 'Stephania Muniz Regufe',
    urlImage:
        'https://image.freepik.com/fotos-gratis/mulher-refinada-com-cabelo-preto-cacheado_197531-16786.jpg',
  ),
  User(
    name: 'Victor Soares Firmino',
    urlImage:
        'https://image.freepik.com/fotos-gratis/retrato-isolado-de-jovem-engracado-de-pele-escura-com-os-bracos-cruzados-com-penteado-afro-na-camisa-branca-casual-sob-jaqueta-jeans-com-expressao-de-rosto-animado_176420-13044.jpg',
  ),
  User(
    name: 'Michael Scott',
    urlImage: 'https://img.ibxk.com.br/2021/01/20/20133848690155.png',
  ),
];

/*Stories List*/
List<Story> stories = [
  Story(
    urlImage:
        'https://image.freepik.com/fotos-gratis/uma-estrada-estreita-cercada-por-arvores-verdes-em-windsor-inglaterra_181624-11528.jpg',
    user: onlineUsers[0],
  ),
  Story(
    urlImage:
        'https://image.freepik.com/fotos-gratis/feche-as-maos-cortando-vegetais_23-2149048162.jpg',
    user: onlineUsers[1],
  ),
  Story(
    urlImage:
        'https://images.unsplash.com/photo-1506880018603-83d5b814b5a6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fHJlYWRpbmd8ZW58MHx8MHx8&w=1000&q=80',
    user: onlineUsers[2],
    wasViewed: true,
  ),
  Story(
    urlImage:
        'https://image.freepik.com/fotos-gratis/bela-praia-tropical-mar-e-mar-com-palmeira-de-coco-na-hora-do-nascer-do-sol_74190-7454.jpg',
    user: onlineUsers[5],
    wasViewed: true,
  ),
  Story(
    urlImage:
        'https://image.freepik.com/fotos-gratis/pessoas-celebrando-em-um-partido_53876-14410.jpg',
    user: onlineUsers[6],
    wasViewed: true,
  ),
  Story(
    urlImage:
        'https://m.media-amazon.com/images/M/MV5BZjY2MDJkOTgtMmI3Ni00MmYwLTk3ZDQtOWMzMGJlYTU2ZjcxXkEyXkFqcGdeQXVyMDgyNjA5MA@@._V1_.jpg',
    user: onlineUsers[7],
    wasViewed: true,
  ),
  Story(
    urlImage:
        'https://image.freepik.com/fotos-gratis/treinamento-dos-pares-na-parte-da-manha_1098-3674.jpg',
    user: onlineUsers[3],
    wasViewed: true,
  ),
];

/*Posts list*/
List<Post> posts = [
  Post(
    user: onlineUsers[0],
    description: 'Hora de relaxar :)',
    timeAgo: '10m',
    urlImage:
        'https://image.freepik.com/fotos-gratis/jovem-relaxa-na-cama-e-aprecia-a-vista-da-montanha_1423-235.jpg',
    likes: 12,
    comments: 1,
    shares: 0,
  ),
  Post(
    user: onlineUsers[7],
    description: 'Sou um exemplo para todos',
    timeAgo: '10m',
    urlImage: 'https://img.ibxk.com.br/2021/09/02/02124030588199.jpg',
    likes: 0,
    comments: 12,
    shares: 0,
  ),
  Post(
    user: onlineUsers[2],
    description:
        '2 anos depois, de volta ao escritório!\nTime unido novamente!',
    timeAgo: '30m',
    urlImage:
        'https://image.freepik.com/fotos-gratis/colegas-dando-uma-colisao-de-punho_53876-64857.jpg',
    likes: 21,
    comments: 5,
    shares: 2,
  ),
  Post(
    user: onlineUsers[3],
    description: 'Amo muito <3',
    timeAgo: '35m',
    urlImage:
        'https://static.scientificamerican.com/sciam/cache/file/A4406EF9-FC62-42E4-9628F374B062AE07.jpg',
    likes: 32,
    comments: 10,
    shares: 4,
  ),
  Post(
    user: onlineUsers[1],
    description: 'Feliz ano novo atrasadoooo!',
    timeAgo: '1d',
    urlImage:
        'https://imagens.ebc.com.br/VP_yVSP8SEGewOONXSFWEiycWsI=/1170x700/smart/https://agenciabrasil.ebc.com.br/sites/default/files/thumbnails/image/reveillon_avenida_paulista_brasilculturacombr.jpg?itok=kcY03urF',
    likes: 14,
    comments: 10,
    shares: 0,
  ),
  Post(
    user: onlineUsers[0],
    description: 'Aff to mto master chef!',
    timeAgo: '1d',
    urlImage:
        'https://image.freepik.com/fotos-gratis/bolo-de-marmore-sem-gluten-chocolate-cafe-e-baunilha-bolo-de-libra-caseiro_114579-5318.jpg',
    likes: 30,
    comments: 26,
    shares: 6,
  )
];
