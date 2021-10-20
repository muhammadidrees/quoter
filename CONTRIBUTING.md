# Welcome to the Contributing Guide

This package was kept in mind for beginners to explore the opensource world. Hopefully by contributing to this repo you will be confident to make future contributions.

## How to start Contributing and pull request

**0.** Find a quote you like.

**1.**  Fork [this](https://github.com/muhammadidrees/quoter) repository.

**2.**  Clone your forked copy of the project.

```
git clone https://github.com/<your_name>/quoter
```

**3.** Navigate to the project directory :file_folder: .

```
cd quoter
```

**4.** Add a reference(remote) to the original repository.

```
git remote add upstream https://github.com/muhammadidrees/quoter
```

**5.** Check the remotes for this repository.
```
git remote -v
```

**6.** Always take a pull from the upstream repository to your master branch to keep it at par with the main project (updated repository).

```
git pull upstream main
```

**7.** Create a new branch.

```
git checkout -b <your_branch_name>
```

**8.** Add your quote in file lib/data/quote_data.dart as follows.

> Donot change any other thing in the file

```
...
{
    "quotation": "--Your Quotation--", 
    "quotee": "--Person you Quoted--"
}
...
```


**9.** Track your changes:heavy_check_mark: .

```
git add . 
```

**10.** Commit your changes .

```
git commit -m "Relevant message"
```

**11.** Push the committed changes in your feature branch to your remote repo.
```
git push -u origin <your_branch_name>
```

**12.** To create a pull request, click on `compare and pull requests`. Please ensure you compare your feature branch to the desired branch of the repository you are supposed to make a PR to.


**13.** Add appropriate title and description to your pull request explaining your changes and efforts done.

> It is important to mention the source of the quotation you added


**14.** Click on `Create Pull Request`.


**15.** Voila!

## Rules
- Pull requests can be submitted to any opted-in repository on GitHub or GitLab.
- The pull request must contain commits you made yourself.
- If a maintainer reports your pull request as spam, it will not be counted toward your participation in Hacktoberfest.
- If a maintainer reports behavior that’s not in line with the project’s code of conduct, you will be ineligible to participate.
- To get a shirt, you must make four approved pull requests (PRs) on opted-in projects between October 1-31 in any time zone.
- This year, the first 55,000 participants can earn a T-shirt.

A repository/project is considered to be participating in Hacktoberfest if the 'hacktoberfest' topic is present and is accepting public contributions via pull requests. An individual pull request can also be opted-in directly by adding the 'hacktoberfest-accepted' label.

A pull request is considered approved once it has an overall approving review from maintainers, or has been merged by maintainers, or has been given the 'hacktoberfest-accepted' label. A pull request with any label containing the word 'spam' or 'invalid' will be considered ineligible for Hacktoberfest.