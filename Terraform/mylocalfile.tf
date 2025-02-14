resource "local_file" "pet"{
    filename = "/home/user/pets.txt"
    content = "we love pets"
}