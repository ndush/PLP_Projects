def read_and_write_file():
    input_filename = input("Enter the name of the file to read: ")

    try:
        with open(input_filename, 'r') as infile:
            content = infile.read()
    except FileNotFoundError:
        print(f"Error: The file '{input_filename}' does not exist.")
        return
    except IOError:
        print(f"Error: Could not read the file '{input_filename}'.")
        return

    # Modify the content (for example, make it uppercase)
    modified_content = content.upper()

    output_filename = "modified_" + input_filename
    try:
        with open(output_filename, 'w') as outfile:
            outfile.write(modified_content)
        print(f"Modified content written to '{output_filename}'.")
    except IOError:
        print(f"Error: Could not write to the file '{output_filename}'.")

if __name__ == "__main__":
    read_and_write_file()
