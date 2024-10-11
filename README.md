# get_language_spread.sh

## Overview

`get_language_spread.sh` is a simple shell script that retrieves the distribution of programming languages used in a specified GitHub repository. By leveraging the GitHub API, this script provides insights into the codebase's language composition, including the total byte count for each language.

## Requirements

- **Bash**: This script is intended to be run in a Unix-like environment with Bash.
- **curl**: Ensure that `curl` is installed to make API requests.
- **jq**: This script uses `jq` to parse JSON responses from the GitHub API. Install it if you don't have it.

## Usage

To run the script, use the following command format:

`./get_language_spread.sh <owner/repo> <github_token>`

### Parameters

- `<owner/repo>`: The GitHub repository in the format `owner/repo` (e.g., `octocat/Hello-World`).
- `<github_token>`: A personal access token from GitHub that provides access to the API. Make sure the token has the appropriate scopes.

### Example

`./get_language_spread.sh octocat/Hello-World YOUR_GITHUB_TOKEN`

## Output

The script will output the following:

- A list of languages used in the repository, along with their respective byte counts.
- The total bytes of code across all languages.

### Sample Output
```bash
Language Spread for repository spack/spack:
----------------------------------------
- Python: 24880339 bytes
- Shell: 513681 bytes
- Prolog: 100980 bytes
- C: 49894 bytes
- CMake: 13351 bytes
- Dockerfile: 12941 bytes
- Makefile: 11955 bytes
- Batchfile: 9355 bytes
- PowerShell: 8138 bytes
- BitBake: 4549 bytes
- Lua: 3080 bytes
- Tcl: 2844 bytes
- C++: 2816 bytes
- Standard ML: 2592 bytes
- Ruby: 2492 bytes
- HTML: 2365 bytes
- M4: 2111 bytes
- Perl: 615 bytes
- Fortran: 561 bytes
- RouterOS Script: 37 bytes
Total bytes of code: 25624696 bytes
```
This information was generated on Fri Oct 11 03:37:21 PM EDT 2024

## Error Handling

- If the script is not provided with exactly two arguments, it will display usage instructions and exit.
- If the API request fails or the response is empty, an error message will be shown.

## Contributing

If you have suggestions for improvements or encounter issues, feel free to open an issue or submit a pull request.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Author

[V-Karch](https://github.com/V-Karch)  
