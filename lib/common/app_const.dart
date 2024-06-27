// ignore_for_file: constant_identifier_names

import '../models/movie.dart';
import '../models/user.dart';

class AppConst {
  static const String SAMPLE_CONST = "";

  static const List<String> imageUrls = [
    "https://images.unsplash.com/photo-1628015081036-0747ec8f077a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=687&q=80",
    "https://plus.unsplash.com/premium_photo-1668319915384-3cccf7689bef?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=764&q=80",
    "https://images.unsplash.com/photo-1611601679655-7c8bc197f0c6?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=764&q=80",
    "https://images.unsplash.com/photo-1576828831022-ca41d3905fb7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=723&q=80",
    "https://images.unsplash.com/photo-1529626455594-4ff0802cfb7e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=687&q=80",
    "https://images.unsplash.com/photo-1617019114583-affb34d1b3cd?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=687&q=80",
    "https://images.unsplash.com/photo-1612336307429-8a898d10e223?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=687&q=80",
    "https://images.unsplash.com/photo-1574655563118-3e3eab32015d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=687&q=80",
    "https://images.unsplash.com/photo-1612872217406-ed2471abf0a0?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=641&q=80",
    "https://images.unsplash.com/photo-1548306530-3ece53b754b3?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=687&q=80",
    "https://images.unsplash.com/photo-1567022296806-d2d37b715647?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=765&q=80"
  ];
  static List<String> getRandomImages(List<String> sourceList) {
    List<String> shuffledList = List.from(sourceList)..shuffle();

    return shuffledList.sublist(0, 5);
  }

  static List<User> userList = [
    User(
        name: "Delores",
        bio:
            "I have a profound appreciation for the serene beauty of the beach, where the rhythmic dance of the waves intertwines with the warmth of the sun to create an atmosphere of tranquil bliss. The beach serves as my sanctuary, a place where I can unwind and reconnect with nature's wonders. The sound of the waves crashing against the shore and the feel of sand beneath my feet are like soothing melodies that resonate with my soul.",
        weight: '52 Kg',
        height: "5’8 (172 cm)",
        image:
            "https://images.unsplash.com/photo-1631947430066-48c30d57b943?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=716&q=80",
        passionList: ["Acting", "Dancing", "Art", "Painting", "Cooking"],
        isSmoking: false,
        isDrinking: true,
        imageList: getRandomImages(imageUrls),
        distance: "8 Km"),
    User(
      name: "Emma",
      bio: "Art enthusiast and painter.",
      weight: '50 Kg',
      height: "5' 4 (172 cm)",
      image:
          "https://images.unsplash.com/photo-1628015081036-0747ec8f077a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=687&q=80",
      passionList: ["Art", "Painting", "Cooking"],
      isSmoking: false,
      isDrinking: false,
      imageList: getRandomImages(imageUrls),
      distance: "7 Km",
    ),
    User(
      name: "Olivia",
      bio: "Food lover and aspiring chef.",
      weight: '58 Kg',
      height: "5' 6",
      image:
          "https://plus.unsplash.com/premium_photo-1668319915384-3cccf7689bef?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=764&q=80",
      passionList: ["Cooking", "Food"],
      isSmoking: false,
      isDrinking: false,
      imageList: getRandomImages(imageUrls),
      distance: "9 Km",
    ),
    User(
      name: "Ava",
      bio: "Animal lover and pet enthusiast.",
      weight: '53 Kg',
      height: "5' 5",
      image:
          "https://images.unsplash.com/photo-1611601679655-7c8bc197f0c6?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=764&q=80",
      passionList: ["Animals", "Pets"],
      isSmoking: false,
      isDrinking: false,
      imageList: getRandomImages(imageUrls),
      distance: "11 Km",
    ),
    User(
      name: "Sophia",
      bio: "Photographer and nature lover.",
      weight: '60 Kg',
      height: "5' 7",
      image:
          "https://images.unsplash.com/photo-1576828831022-ca41d3905fb7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=723&q=80",
      passionList: ["Photography", "Nature"],
      isSmoking: false,
      isDrinking: false,
      imageList: getRandomImages(imageUrls),
      distance: "10 Km",
    ),
    User(
      name: "Mia",
      bio: "Fashionista and style enthusiast.",
      weight: '52 Kg',
      height: "5' 6",
      image:
          "https://images.unsplash.com/photo-1529626455594-4ff0802cfb7e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=687&q=80",
      passionList: ["Fashion", "Style"],
      isSmoking: false,
      isDrinking: false,
      imageList: getRandomImages(imageUrls),
      distance: "5 Km",
    ),
    User(
      name: "Jennifer",
      bio: "Fashionista and style enthusiast.",
      weight: '52 Kg',
      height: "5' 6",
      image:
          "https://images.unsplash.com/photo-1612336307429-8a898d10e223?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=687&q=80",
      passionList: ["Fashion", "Style"],
      isSmoking: false,
      isDrinking: false,
      imageList: getRandomImages(imageUrls),
      distance: "5 Km",
    ),
  ];

  static List<Movie> movieList = [
    Movie(
        name: "Barbie",
        description:
            'To live in Barbie Land is to be a perfect being in a perfect place. Unless you have a full-on existential crisis. Or you’re a Ken.',
        rating: 4.5,
        image:
            "https://www.gamespot.com/a/uploads/scale_super/1597/15976769/4121663-margot.jpg",
        imageList: [
          "https://www.gamespot.com/a/uploads/scale_super/1597/15976769/4121665-harinef.jpg",
          "https://www.gamespot.com/a/uploads/scale_super/1597/15976769/4121672-dualipa.jpg",
          "https://www.gamespot.com/a/uploads/scale_super/1597/15976769/4121803-ryangosling.jpg"
        ],
        tags: ["Action", "comedy"],
        castList: [
          Cast(
              name: "Margot Robbie",
              imageUrl:
                  "https://www.gamespot.com/a/uploads/scale_super/1597/15976769/4121663-margot.jpg"),
          Cast(
              name: "Ryan Gosling",
              imageUrl:
                  "https://www.gamespot.com/a/uploads/scale_super/1597/15976769/4121803-ryangosling.jpg"),
          Cast(
              name: "Issa Rae",
              imageUrl:
                  "https://www.gamespot.com/a/uploads/scale_super/1597/15976769/4121665-harinef.jpg"),
          Cast(
              name: "Emma Mackey",
              imageUrl:
                  "https://www.gamespot.com/a/uploads/scale_super/1597/15976769/4121803-ryangosling.jpg")
        ],
        distance: '10 Km'),
    Movie(
      name: "Oppenheimer",
      description:
          "The story of American scientist, J. Robert Oppenheimer, and his role in the development of the atomic bomb.",
      rating: 4.9,
      image:
          "https://m.media-amazon.com/images/M/MV5BMDBmYTZjNjUtN2M1MS00MTQ2LTk2ODgtNzc2M2QyZGE5NTVjXkEyXkFqcGdeQXVyNzAwMjU2MTY@._V1_.jpg",
      imageList: [
        "https://m.media-amazon.com/images/M/MV5BYmI1NjRjY2ItZTViMi00M2JlLWFmYWMtODc1YWJiYmY1NzA0XkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_.jpg",
        "https://m.media-amazon.com/images/M/MV5BMWIyNzdlNGItN2M5OC00YjUxLThkMDktNDUzOWFkNzgxZWYyXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_.jpg",
        "https://m.media-amazon.com/images/M/MV5BMWIyNzdlNGItN2M5OC00YjUxLThkMDktNDUzOWFkNzgxZWYyXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_.jpg"
      ],
      tags: ["Drama", "History", "Biography"],
      castList: [
        Cast(
            name: "Cillian Murphy",
            imageUrl:
                "https://images.unsplash.com/photo-1669462277329-f32f928a4a79?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80"),
        Cast(
            name: "Emily Blunt",
            imageUrl:
                "https://images.unsplash.com/photo-1669462277329-f32f928a4a79?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80"),
        Cast(
            name: "Matt Damon",
            imageUrl:
                "https://images.unsplash.com/photo-1669462277329-f32f928a4a79?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80"),
        Cast(
            name: "Robert Downey Jr.",
            imageUrl:
                "https://images.unsplash.com/photo-1669462277329-f32f928a4a79?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80")
      ],
      distance: '12 Km',
    ),
    Movie(
      name: "Blue Beetle",
      description:
          "An alien relic chooses Jaime Reyes to be its symbiotic host, bestowing the teenager with a suit of armor that's capable of extraordinary and unpredictable powers, forever changing his destiny as he becomes the superhero Blue Beetle.",
      rating: 4.2,
      image:
          "https://www.liveforfilm.com/wp-content/uploads/2023/06/blue-beetle-poster-2.jpeg",
      imageList: [
        "https://m.media-amazon.com/images/M/MV5BOTJiOWNlN2QtZjdkYS00YzFkLWFiZWEtNGI5OGQxYWUwZTgxXkEyXkFqcGdeQXVyMTUzMTg2ODkz._V1_.jpg",
        "https://m.media-amazon.com/images/M/MV5BMjQxMGJhYjItMzEwMS00MWQ3LWE0OGItODI4OTg4OGJmYmYxXkEyXkFqcGdeQXVyMTEyMjM2NDc2._V1_.jpg"
      ],
      tags: ["Adventure", "Action", "Sci-Fi"],
      castList: [
        Cast(
            name: "Bruna Marquezine",
            imageUrl:
                "https://images.unsplash.com/photo-1669462277329-f32f928a4a79?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80"),
        Cast(
            name: "Xolo Maridueña",
            imageUrl:
                "https://images.unsplash.com/photo-1669462277329-f32f928a4a79?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80"),
        Cast(
            name: "Harvey Guillén",
            imageUrl:
                "https://images.unsplash.com/photo-1669462277329-f32f928a4a79?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80"),
        Cast(
            name: "Susan Sarandon",
            imageUrl:
                "https://images.unsplash.com/photo-1669462277329-f32f928a4a79?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80")
      ],
      distance: '8 Km',
    ),
    Movie(
      name: "Mission: Impossible - Dead Reckoning Part One",
      description:
          "Ethan Hunt and his IMF team must track down a dangerous weapon before it falls into the wrong hands.",
      rating: 4.2,
      image:
          "https://m.media-amazon.com/images/M/MV5BYzFiZjc1YzctMDY3Zi00NGE5LTlmNWEtN2Q3OWFjYjY1NGM2XkEyXkFqcGdeQXVyMTUyMTUzNjQ0._V1_FMjpg_UY471_.jpg",
      imageList: [
        "https://m.media-amazon.com/images/M/MV5BZmQ5YTAzMzUtYTQxZi00ZTNlLWI5YzItNDcxNmRhMDk2OGUyXkEyXkFqcGdeQXVyMDM2NDM2MQ@@._V1_.jpg",
        "https://m.media-amazon.com/images/M/MV5BY2MzMTBiYTUtZmE5Mi00OTRmLWIwOTMtYTkzOWEwZDI0Y2Y4XkEyXkFqcGdeQXVyMDM2NDM2MQ@@._V1_.jpg",
        "https://m.media-amazon.com/images/M/MV5BY2MzMTBiYTUtZmE5Mi00OTRmLWIwOTMtYTkzOWEwZDI0Y2Y4XkEyXkFqcGdeQXVyMDM2NDM2MQ@@._V1_.jpg"
      ],
      tags: ["Adventure", "Action", "Thriller"],
      castList: [
        Cast(
            name: "Tom Cruise",
            imageUrl:
                "https://images.unsplash.com/photo-1669462277329-f32f928a4a79?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80"),
        Cast(
            name: "Hayley Atwell",
            imageUrl:
                "https://images.unsplash.com/photo-1669462277329-f32f928a4a79?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80"),
        Cast(
            name: "Simon Pegg",
            imageUrl:
                "https://images.unsplash.com/photo-1669462277329-f32f928a4a79?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80"),
        Cast(
            name: "Rebecca Ferguson",
            imageUrl:
                "https://images.unsplash.com/photo-1669462277329-f32f928a4a79?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80")
      ],
      distance: '8 Km',
    ),
    Movie(
      name: "Indiana Jones and the Dial of Destiny",
      description:
          "Archaeologist Indiana Jones races against time to retrieve a legendary artifact that can change the course of history.",
      rating: 4.6,
      image:
          "https://m.media-amazon.com/images/M/MV5BZDQxMTY3NTAtMzYwYi00Y2U3LThkYmQtOTljY2I4ZmJiZGIzXkEyXkFqcGdeQXVyMTU1NzY5NTky._V1_.jpg",
      imageList: [
        "https://m.media-amazon.com/images/M/MV5BMWNmZmE4ZTgtODQ2OC00N2YwLThlNjctZTM3OTAxYzY4NWJiXkEyXkFqcGdeQXVyMTUzMTg2ODkz._V1_.jpg",
        "https://m.media-amazon.com/images/M/MV5BYmFmMjkwYjUtYTQ2My00NTE3LWIzOTQtMjBmYzVlZmEwNDg3XkEyXkFqcGdeQXVyMTUzMTg2ODkz._V1_.jpg"
      ],
      tags: ["Adventure", "Action"],
      castList: [
        Cast(
            name: "Harrison Ford",
            imageUrl:
                "https://images.unsplash.com/photo-1669462277329-f32f928a4a79?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80"),
        Cast(
            name: "Ford",
            imageUrl:
                "https://images.unsplash.com/photo-1669462277329-f32f928a4a79?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80"),
        Cast(
            name: "Harrison",
            imageUrl:
                "https://images.unsplash.com/photo-1669462277329-f32f928a4a79?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80")
      ],
      distance: '8 Km',
    ),
  ];
}
