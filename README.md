# Moderne Patient:innenabrechnung und Datenkommunikation on FHIR (MOPED)
This repository serves to host the developed FHIR® profiles for the project MOPED.

The rendered version of the current version of the MOPED Implementation Guide will be published at https://fhir.hl7.at/r5-ELGA-MOPED-main/index.html. The publishing is done fully automatically after every successful merge to master.


# Contribution Guidelines

To contribute to this project, please follow the steps below to ensure a smooth and collaborative workflow:

1. **Open or Select an Issue**  
   - Start by creating a new GitHub Issue for the feature or bug you're working on, or pick an existing Issue that aligns with your task.

2. **Create a Feature Branch**  
   - Create a new branch using the format: `issue-number-description`, e.g., `12-adding-profile-for-coverage`. Do not include the '#' symbol before the issue number. This helps in linking the branch with the Issue for better traceability.

3. **Implement Your Changes**  
   - Work on the required changes in your feature branch. 

4. **Preview Your Changes Locally**  
   - Before pushing your changes, run `sh _genonce.sh` to generate the updated version of the project locally. Open the generated `output/index.html` file in your browser to review your work.

5. **Commit Changes**  
   - Commit your work locally with descriptive messages in t he format: `#issue-number-description`, e.g., `12-added-coverage-profile` summarizing the changes. Remember to commit frequently, especially after significant updates.

6. **Push Your Branch**  
   - Once you're ready, push your feature branch to the remote repository to make your work accessible for collaboration.

7. **Submit a Pull Request**  
   - When you're finished working on the issue, create a Pull Request (PR) on GitHub. Ensure that the PR clearly references the relevant Issue number and includes a brief description of the changes.

8. **Check Automated Tests**  
   - After submitting the PR, monitor the status of any automated checks or CI pipelines. Ensure that all tests pass before proceeding.

9. **Request Review**  
   - Request a review on your PR and label the corresponding Issue with `review` to notify team members that it's ready for evaluation.

# Updating the mapping

1. **Document mapping changes**  
   - Make changes in docs/FHIR_Mapping_for_IG.xlsx
   - Save the file
2. **Run python script**
   - Run docs/generateMappingHTMLs.py
3. **Contribute changes**
   - Commit and push the new changes to the files ka-org_mapping.md and lkf_mapping.md according to the contribution guidelines.

# Helpful References

- [FHIR Financial Module for more information about many related resources](https://www.hl7.org/fhir/financial-module.html)
- [FSH School for testing fhir shorthand files directly online](https://fshonline.fshschool.org/)


