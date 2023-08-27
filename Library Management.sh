#!/bin/bash
library_file="library.txt"

add_book() {
    echo "Enter book title:"
    read title
    echo "Enter author name:"
    read author
    echo "$title by $author" >> "$library_file"
    echo "Book added!"
}

list_books() {
    echo "List of books :"
    if [ -s "$library_file" ]; then
        cat "$library_file"
    else
        echo "No books available."
    fi
}

remove_book() {
    echo "Enter book title to remove:"
    read title_to_remove
    if grep -q "$title_to_remove" "$library_file"; then
        grep -v "$title_to_remove" "$library_file" > temp.txt
        mv temp.txt "$library_file"
        echo "Book removed successfully!"
    else
        echo "Book not found ."
    fi
}


while true;
do
    echo "Library Management System"
    echo "1. Add a book"
    echo "2. List books"
    echo "3. Remove a book"
    echo "4. Exit"
    read ch

    case $ch in
        1) add_book ;;
        2) list_books ;;
        3) remove_book ;;
        4) echo "Exiting the program."
           break ;;
        *) echo "Invalid choice. Please enter a valid option." ;;
    esac
done
