import pandas as pd
import re

# Function to create HTML table for each pair of columns
def generate_html_table(df, col_pair, additional_columns):
    html_output = '<div class="table-responsive">\n<table>\n'

    # Table header
    html_output += '    <tr>\n'
    html_output += f'        <td>{df.columns[col_pair[0]]}</td>\n'
    html_output += f'        <td></td>\n'
    for col in additional_columns:
        html_output += f'        <td>{col}</td>\n'
    html_output += '    </tr>\n'

    # Filter rows where both columns in the pair are not empty
    filtered_df = df.iloc[:,
                  [col_pair[0], col_pair[1]] + [df.columns.get_loc(col) for col in additional_columns]].dropna(
        subset=[df.columns[col_pair[0]], df.columns[col_pair[1]]], how='all')

    # Add table rows
    for _, row in filtered_df.iterrows():
        html_output += '    <tr>\n'
        # Replace NaN values with empty strings
        html_output += f'        <td>{row[df.columns[col_pair[0]]] if pd.notna(row[df.columns[col_pair[0]]]) else ""}</td>\n'
        html_output += f'        <td>{row[df.columns[col_pair[1]]] if pd.notna(row[df.columns[col_pair[1]]]) else ""}</td>\n'
        for col in additional_columns:
            html_output += f'        <td>{row[col] if pd.notna(row[col]) and str(row[col]) != "0" else ""}</td>\n'
        html_output += '    </tr>\n'

    html_output += '</table>\n</div>\n'
    return html_output

def replace_html_in_md(html_content, md_file_path, section_identifier):
    with open(md_file_path, 'r') as md_file:
        md_content = md_file.read()
    pattern = rf"{section_identifier}.*"
    new_section = html_content

    # Replace the section
    md_content = re.sub(pattern, new_section, md_content, flags=re.DOTALL)

    with open(md_file_path, 'w') as md_file:
        md_file.write(md_content)
def createMappingTable(heading, LKF=True):

    # Load the Excel file
    kaOrg_md_file_path = 'input/pagecontent/ka-org_mapping.md'
    lkf_md_file_path = 'input/pagecontent/lkf_mapping.md'
    path_to_file = "docs/FHIR_Mapping_for_IG.xlsx"
    KaOrg_sheet = 'KaOrg'
    LKF_sheet = 'LKF'
    df = pd.read_excel(path_to_file, sheet_name=LKF_sheet if LKF else KaOrg_sheet)

    # Column pairs
    KaOrg_column_pairs = [(i, i + 1) for i in range(0, 22, 2)]
    LKF_column_pairs = [(i, i + 1) for i in range(0, 20, 2)]

    # Additional columns
    additional_columns = ['Resource', 'FHIRPath', 'Extension', 'Anmerkung']

    KaOrg_section_titles = ["Identifikationsteil", "Identifikationsteil für den Landesgesundheitsfonds", "K01", "K03", "K05", "K09", "K20", "K12", "K13", "K21", "K27"]
    LKF_section_titles = ["X01","X02","X03","X04","X05","X06","X07","I11","I12","K01*"]
    html_tables = ""
    for col_pair, title in zip(LKF_column_pairs if LKF else KaOrg_column_pairs, LKF_section_titles if LKF else KaOrg_section_titles):
        html_tables += f"### {title} -> FHIR\n"  # Add the section title as a MD Header
        html_tables += generate_html_table(df, col_pair, additional_columns)  # Generate and add the HTML table

    

    # update the md file with the new tables
    replace_html_in_md(html_content=html_tables,md_file_path=lkf_md_file_path if LKF else kaOrg_md_file_path,section_identifier=heading)
    

    print(f"{ 'LKF' if LKF else 'KaOrg'} HTML tables have been generated and saved.")


createMappingTable(heading="### X01 -> FHIR",LKF=True) #generate LKF tables
createMappingTable(heading="### Identifikationsteil -> FHIR",LKF=False) #generate KaOrg tables