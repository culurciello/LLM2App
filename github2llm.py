# E. Culurciello, February 2024

# generated with Gemini:
# generate a python script that can recursively parse a directory of files with specific files extensions and copy all the files into a text string. Must be able to take as argument the directory string, and must have a variable to specify multiple file extensions. It should save the text file as prompt.txt 
# run as: python github2llm.py my_dir/ "swift,json,xcodeproj,plist"

import os
import sys

def parse_directory(directory, extensions):
    """Recursively parses a directory of files with specific files extensions and copies all the files into a text string.

    Args:
    directory: The directory to parse.
    extensions: A list of file extensions to look for.
    text_file_name: The name of the text file to save the results to.
    """

    fnd = os.listdir(directory)
    fnd = [f for f in fnd if not f.startswith(".")]
    print("Directories: ", fnd, "\nSaving files:")
    
    list = []

    for dir in fnd:
        for root, dirs, files in os.walk(dir):

            for file in files:
                if file.endswith(tuple(extensions)):
                    ff = os.path.join(root, file)
                    print(ff)
                    list.append(ff)
    
    return list, fnd


def copy_files_to_text_string(files, directory_structure):
    """Copy all the files in a list into a text string.

    Args:
    files: A list of files to copy.

    Returns:
    A text string containing the contents of all the files.
    """

    text_string = ""

    # copy directory structure:
    text_string += "Directory structure:\n"
    for d in directory_structure:
        text_string += d+"\n"

    text_string += "\n\n"

    # copy files:
    for file in files:
        with open(file, "r") as f:
            text_string += "File name: "+file+"\n"
            text_string += f.read()
            text_string += "\n\n"

    return text_string

def main():
    """Gets the command line arguments and calls the parse_directory function."""

    # Get the command line arguments.
    if len(sys.argv) != 3:
        print("Usage: python parse_directory.py <directory> <extensions>")
        sys.exit(1)

    directory = sys.argv[1]
    extensions = sys.argv[2].split(',')
    text_file_name = "prompt.txt"

    print("Parsing files in directory:", directory)

    # Parse the directory.
    files, directory_structure = parse_directory(directory, extensions)
    text_string = copy_files_to_text_string(files, directory_structure)

    with open(text_file_name, "w") as f:
        f.write(text_string)

if __name__ == "__main__":
    main()