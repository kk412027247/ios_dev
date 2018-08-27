import Cocoa

//var str = "Hello, playground"

var movieRatings = ["Donnie Darko": 4, "Chunking Express": 5, "Dark City": 4]
print("I have rate \(movieRatings.count) movies")
let darkoRating = movieRatings["Donnie Darko"]
movieRatings["Dark City"] = 5
movieRatings
let oldRating: Int? = movieRatings.updateValue(5, forKey:"Donnie Darko")
if let lastRating = oldRating, let currentRating = movieRatings["Donnie Darko"]{
    print("Old rating: \(lastRating); current rating: \(currentRating)")
}
movieRatings["The Cabinet of Dr. Caligari"] = 5
//movieRatings.removeValue(forKey: "Dark City")
movieRatings["Dark City"] = nil
for(key, value) in movieRatings{
    print("The movie \(key) was rate \(value).")
}

for movie in movieRatings.keys{
    print("User has rate \(movie).")
}
let album = [
    "Diet Roast Beef": 268,
    "Dubba Dubbs Stubs His Toe": 467,
    "Smokey's Carpet Cleaning Service": 187,
    "Track 4": 221
]
let watchedMovies = Array(movieRatings.keys)

