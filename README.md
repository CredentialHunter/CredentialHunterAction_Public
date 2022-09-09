# Credential Hunter Action

Credential Hunter is a tool you can use to locate hardcoded credentials in your git repositories

Why use Credential Hunter?
- **It's a GitHub Action**, which means you just add, configure, and you're off to the races.
- **It's fast!**  Much faster than TruffleHog, GitGuardian, and others.
- **It’s thorough**. Get alerted to credentials in every commit, not just the first git diff it's found in
- **It’s free!** While we are in beta, all we ask for is feedback: what you like, what you don’t, and what you would like to see. Opening up this communication is why we ask you to request a license.

# How to use

#### Step 1
Request a license via https://credentialhunter.freshdesk.com/support/tickets/new and we will send it to you.

#### Step 2
Add the license to your GitHub repository secrets. 
More information about this is available at https://docs.github.com/en/actions/security-guides/encrypted-secrets

#### Step 3
Add the following step to your Github Workflow:
    
      name: Credential Hunter
      uses: actions/credentialhunter@v1
      with:
        jar_parms: '-r . -j output.json -cmax 10 --skip-refs'
        license: ${{ secrets.credential_hunter_license }}

This will create an output file, "output.json" which you can then upload, commit, send to your favorite dashboard, etc. 
IMPORTANT: if you ask us about a specific finding, _please_ mangle the found credential before sending it in plain text.

For example, we could use Github's Artifacts to store the results by adding this step after the Credential Hunter scan:

        name: Archive production artifacts
        uses: actions/upload-artifact@v3
        with:
          name: scan-results
          path: output.json

#### Step 4
Trigger the scan using your preferred workflow trigger.

#### Step 5
Tell your project lead that you now have credential scanning on your repository. Be promoted, celebrated, and receive a $1,000,000 bonus for being security-minded. *
<sup><sub>*Credential Hunter does not guarantee your project lead will promote you or give you $1M, but we do think they should.</sup></sub> ¯\_(ツ)_/¯

## More info
Do you like it and want to use it outside of GitHub Actions?  Check us out: https://www.credentialhunter.com
