# Credential Hunter Action

Credential Hunter is a tool you can use to locate hardcoded credentials in your git repositories

Why use Credential Hunter?
- It's a Github Action which means you just add, configure, and you're off to the races.
- It's fast!  Much faster than TruffleHog, GitGuardian, and the others
- It tells you every commit the credential is in, not just the first git diff it's found in
- We haven't monetized. Which means it's free! 
    - (We only ask you contact us first because we want to know how to make it better)

# How to use

#### Step 1
Contact josh@credentialhunter.com and we'll send you a license.

#### Step 2
Add the license to your Github repository secrets. 
See here for more info on that: https://docs.github.com/en/actions/security-guides/encrypted-secrets

#### Step 3
Add the following step to your Github Workflow:
    
      name: Credential Hunter
      uses: actions/credentialhunter@v1
      with:
        jar_parms: '-r . -j output.json -cmax 10 --skip-refs'
        license: ${{ secrets.credential_hunter_license }}

This will create an output file "output.json" which you can then upload, commit, send to your favorite dashboard, etc. 

For example we could use Github's Artifacts to store the results by adding this step after the Credential Hunter scan:

        name: Archive production artifacts
        uses: actions/upload-artifact@v3
        with:
          name: scan-results
          path: output.json

#### Step 4
Trigger the scan using your preferred workflow trigger

#### Step 5
Tell your project lead that you now have credential scanning on your repository. Be promoted, celebrated, and earn $1,000,000+ *
<sup><sub>*Credential Hunter does not guarantee your project lead will promote you and give you $1M, but we do think they should</sup></sub>

## More info
Do you like it and want to use it outside of Github Actions?  Check us out: https://www.credentialhunter.com/
