#!/usr/bin/env python3

import argparse
import json
import os
from colorama import init, Fore, Style

init()


def parse_package(package_path):
    try:
        if os.path.isdir(package_path):
            package_path = os.path.join(package_path, 'package.json')
        elif os.path.isfile(package_path):
            if not package_path.endswith('package.json'):
                print(f'{package_path} is not a package.json file.')
                return

        with open(package_path) as f:
            data = json.load(f)
    except FileNotFoundError:
        print(f'No package.json file found at {package_path}.')
        return

    scripts = data.get('scripts', {})
    for key, value in scripts.items():
        print(
            f'{Style.BRIGHT}"{Fore.BLUE}{key}"{Style.RESET_ALL}{Fore.GREEN}: "{value}"')


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description='Parse a package.json file.')
    parser.add_argument('path', type=str, nargs='?', default='.',
                        help='Path to the directory or package.json file. Defaults to the current directory.')
    args = parser.parse_args()

    parse_package(args.path)
