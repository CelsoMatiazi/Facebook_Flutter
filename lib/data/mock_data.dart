
import 'package:facebook_flutter/data/models/post_model.dart';
import 'package:facebook_flutter/data/models/story_model.dart';

class DataMock{
  DataMock._();

  static String userImg  = "https://scontent.fgru6-1.fna.fbcdn.net/v/t1.18169-9/11709602_985264824829213_6502329311697522611_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=3BWl4cHDI9wAX8ZF97O&_nc_ht=scontent.fgru6-1.fna&oh=00_AT8W8RdC2FEgYvwu4em68sr6k3vu9lXQatIQOpgCBvuO7A&oe=62E7D61C";

  static List<StoryModel> stories = [
    StoryModel(
        userImg: "https://www.muzplay.net/sites/default/files/posts/artistas/jimi-hendrix-458955.jpg",
        storyImg: "https://studiosol-a.akamaihd.net/letras/500x500/fotos/a/3/7/2/a372ee687749cef5ec6188750852ac96.jpg",
        userName: "Jimi Hendrix"
    ),
    StoryModel(
        userImg: "https://i.scdn.co/image/ab6761610000e5ebf08ae551610d2399255c5e79",
        storyImg: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRMwoloGANyJC46k49cf74-oYyL9Ic5bpwrIQ&usqp=CAU",
        userName: "Pat Metheny"
    ),
    StoryModel(
        userImg: "https://images.mubicdn.net/images/cast_member/9916/cache-195703-1485841701/image-w856.jpg?size=800x",
        storyImg: "https://jornalggn.com.br/wp-content/uploads/imagens/paco_de_lucia_1.jpg",
        userName: "Paco de Lucia"
    ),
    StoryModel(
        userImg: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSRpgIRJGDfX1L1iWWToKilNgQwmJ98yQotRg&usqp=CAU",
        storyImg: "https://www.kboing.com.br/fotos/imagens/4defb417d304c.jpg",
        userName: "Steve Morse"
    ),
    StoryModel(
        userImg: "https://i.pinimg.com/474x/a4/92/e6/a492e6f7a1586f01959e1e9b8437d32b--joe-satriani-steve-vai.jpg",
        storyImg: "https://roadiecrew.com/wp-content/uploads/joe-satriani-e1594106911622.jpg",
        userName: "Joe Satriani"
    ),
    StoryModel(
        userImg: "https://media.gettyimages.com/photos/american-rock-musician-eddie-van-halen-of-the-group-van-halen-at-picture-id577083485?s=612x612",
        storyImg: "https://ufmg.br/thumbor/rOfg4xxkFl3ghwK5wKUtW1CFjjQ=/0x0:802x535/712x474/https://ufmg.br/storage/e/4/9/f/e49f5e7bca093b68c15fc870d389aeec_16021847312905_2140798537.jpg",
        userName: "Van Halen"
    ),
    StoryModel(
        userImg: "https://studiosol-a.akamaihd.net/uploadfile/letras/fotos/9/1/f/4/91f4e4fc4e964909391ff77ca266f70a.jpg",
        storyImg: "https://i0.wp.com/guitarload.com.br/wp-content/uploads/2021/12/steve-vai.jpg?fit=1200%2C628&ssl=1",
        userName: "Steve Vai"
    ),
    StoryModel(
        userImg: "http://screamyell.com.br/site/wp-content/uploads/2013/01/miles.jpg",
        storyImg: "https://p2.trrsf.com/image/fget/cf/1200/900/middle/images.terra.com/2022/04/28/1651353945-miles-davis-instagram.jpg",
        userName: "Miles Davis"
    ),
    StoryModel(
        userImg: "https://a-static.mlcdn.com.br/800x560/adesivo-decorativo-de-parede-musica-the-beatles-paul-ringo-aartedecor/aartedecor/651-909/190b1e756b8cc562bdf4de46d3323d42.jpg",
        storyImg: "https://s2.glbimg.com/j_EcftNXf_esrG3lO8gb6DUFDwg=/0x0:1453x1500/984x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_59edd422c0c84a879bd37670ae4f538a/internal_photos/bs/2019/p/W/NF3wpSTgWY1U0jRnVQgA/the-beatles-abbey-road.jpg",
        userName: "Beatles"
    ),
    StoryModel(
        userImg: "https://i.ytimg.com/vi/XUbZ6h2QPv8/hqdefault.jpg",
        storyImg: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTeFhLBCoBBDCEaLyH8C2iKjH1dDW7a2mOLcg&usqp=CAU",
        userName: "Allan Holdsworth"
    ),
  ];


  static List<PostModel> posts = [
    PostModel(
        name: "Celso Ricardi",
        timeAgo: "1 h • ",
        userImg: userImg,
        postTxt: "App clone do Facebook, decidi implementar essa copia do facebook afim de exercitar o desenvolvimento de um layout bem elaborado com animações etc, esta sendo um grande desafio",
        postImg: "https://blog-geek-midia.s3.amazonaws.com/wp-content/uploads/2020/11/06133829/flutter.png"
    ),
    PostModel(
        name: "Steve Vai",
        timeAgo: "5 h • ",
        userImg: "https://studiosol-a.akamaihd.net/uploadfile/letras/fotos/9/1/f/4/91f4e4fc4e964909391ff77ca266f70a.jpg",
        postTxt: "Check out images from my last show in Brazil",
        postImg: "http://metalrevolution.net/blog/wp-content/uploads/2017/06/SteveVai-Imperator-AronyMartins-Junho2017-2-of-52.jpg"
    ),
    PostModel(
        name: "Paco de Lucia",
        timeAgo: "15 h • ",
        userImg: "https://images.mubicdn.net/images/cast_member/9916/cache-195703-1485841701/image-w856.jpg?size=800x",
        postTxt: "Paco de Lucia - Eterno",
        postImg: "https://jornalggn.com.br/wp-content/uploads/imagens/paco_de_lucia_1.jpg"
    ),
    PostModel(
        name: "Celso Ricardi",
        timeAgo: "20 h • ",
        userImg: userImg,
        postTxt: "Alguem indica um bom restaurante japones?",
    ),
    PostModel(
        name: "Miles Davis",
        timeAgo: "20 h • ",
        userImg: "http://screamyell.com.br/site/wp-content/uploads/2013/01/miles.jpg",
        postTxt: "Jazz",
        postImg: "https://p2.trrsf.com/image/fget/cf/1200/900/middle/images.terra.com/2022/04/28/1651353945-miles-davis-instagram.jpg"
    ),

  ];

}