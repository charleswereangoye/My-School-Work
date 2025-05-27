#!/bin/bash

echo "Enter the name of the directory:"
read directory

file1="submission1.txt"
file2="submission2.txt"

if [ -f "$directory" ]; then
  echo "Error: A file named '$directory' already exists. Please choose a different name."
  exit 1
fi

if [ -d "$directory" ]; then
  echo "The directory '$directory' already exists."
  echo "Creating the two files inside it..."
else
  echo "The directory '$directory' does not exist."
  echo "Creating the directory..."
  mkdir "$directory"
  echo "Directory '$directory' created."
  echo "Now creating the two files inside it..."
fi

touch "$directory/$file1"
touch "$directory/$file2"

echo "Files '$file1' and '$file2' created successfully inside '$directory'."
