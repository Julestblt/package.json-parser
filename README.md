# package.json Script Parser

pscrpt is a command line utility written in Python that allows you to display the scripts defined in a package.json file in a formatted way.

## Installation

To install pscrpt, first clone this repository on your computer.

```bash
git clone https://github.com/Julestblt/package.json-parser.git
cd package.json-parser
```

After that, you can install pscrpt by running the installation script:
    
```bash 
pip install -r requirements.txt
```

Then, navigate to the repository directory and run the installation script using the following command:

```bash
./install.sh
```

If a previous version of pscrpt is already installed, the installation script will do nothing unless you provide the -F option:

```bash
./install.sh -F
```

## Usage

Once installed, you can use pscrpt to display the scripts of a package.json file using the following command:

```bash
pscrpt [path]
```

Where [path] is the path to the directory containing the package.json file or the path to the package.json file itself. If no path is provided, pscrpt will default to the current directory.

For example, to display the scripts of the package.json file in the current directory, you can use:

```bash
pscrpt
```

Or to display the scripts of the package.json file in another directory:

```bash
pscrpt ../other-directory
```
Or to display the scripts of a specific package.json file:

```bash
pscrpt /path/to/package.json
```


## Contribution

If you wish to contribute to this project, please feel free to submit a pull request. All contributions are welcome!

License
This project is licensed under the MIT license. For more information, please see the LICENSE file.

This README provides basic instructions on installing and using your script, as well as other useful information like how to contribute to the project and the project's license. You can, of course, modify this README to better fit your specific project.
