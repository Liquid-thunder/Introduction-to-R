three <- list(studentName = "Bruce Wayne", studentage = 27, studentLocation = "Gotham")
class(three) <- "VersionThree"

setClass("Employee", slots =list(name = "character", id = "numeric", contact = "numeric"))
four <- new("Employee", name = "Clark Kent", id = 456321, contact = 7896542345)
