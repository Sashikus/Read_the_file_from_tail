Feature: The script can accept file as an input source and display last 5 lines
  Pass TXT/LOG/RTF/DOC/DOCX/PDF/ODT file with less than 5 lines to the script
  Pass TXT/LOG/RTF/DOC/DOCX/PDF/ODT file with more than 5 lines to the script
  Pass an empty TXT file to the script

  Scenario: Pass TXT file with less than 5 lines to the script
    Given a file with
      | format | filename  | number_of_lines |
      | .txt   | test_file |       4         |
    When the script accepts given txt file
    Then message should be displayed "File contains less than 5 lines!"

  Scenario: Pass TXT file with more than 5 lines to the script
    Given a file with
      | format | filename  | number_of_lines |
      | .txt   | test_file |       6         |
    When the script accepts given txt file
    Then message should be displayed "Last 5 list is printed successfully!"

  Scenario: Pass an empty TXT file to the script
    Given a file with
      | format | filename  | number_of_lines |
      | .txt   | test_file |       0         |
    When the script accepts given txt file

  Scenario: Pass LOG file with more than 5 lines to the script
    Given a file with
      | format | filename  | number_of_lines |
      | .log   | test_file |       6         |
    When the script accepts given log file
    Then message should be displayed "Last 5 list is printed successfully!"

  Scenario: Pass LOG file with less than 5 lines to the script
    Given a file with
      | format | filename  | number_of_lines |
      | .log   | test_file |       4         |
    When the script accepts given log file
    Then message should be displayed "File contains less than 5 lines!"

  Scenario: Pass RTF file with more than 5 lines to the script
    Given a file with
      | format | filename  | number_of_lines |
      | .rtf   | test_file |       6         |
    When the script accepts given rtf file
    Then message should be displayed "Last 5 list is printed successfully!"

  Scenario: Pass RTF file with less than 5 lines to the script
    Given a file with
      | format | filename  | number_of_lines |
      | .rtf   | test_file |       4         |
    When the script accepts given rtf file
    Then message should be displayed "File contains less than 5 lines!"

  Scenario: Pass DOC file with more than 5 lines to the script
    Given a file with
      | format | filename  | number_of_lines |
      | .doc   | test_file |       6         |
    When the script accepts given doc file
    Then message should be displayed "Last 5 list is printed successfully!"

  Scenario: Pass DOC file with less than 5 lines to the script
    Given a file with
      | format | filename  | number_of_lines |
      | .doc   | test_file |       4         |
    When the script accepts given doc file
    Then message should be displayed "File contains less than 5 lines!"

  Scenario: Pass DOCX file with more than 5 lines to the script
    Given a file with
      | format  | filename  | number_of_lines |
      | .docx   | test_file |       6         |
    When the script accepts given docx file
    Then message should be displayed "Last 5 list is printed successfully!"

  Scenario: Pass DOCX file with less than 5 lines to the script
    Given a file with
      | format | filename  | number_of_lines |
      | .docx   | test_file |       4         |
    When the script accepts given docx file
    Then message should be displayed "File contains less than 5 lines!"

  Scenario: Pass PDF file with more than 5 lines to the script
    Given a file with
      | format | filename  | number_of_lines |
      | .pdf   | test_file |       6         |
    When the script accepts given pdf file
    Then message should be displayed "Last 5 list is printed successfully!"

  Scenario: Pass PDF file with less than 5 lines to the script
    Given a file with
      | format | filename  | number_of_lines |
      | .pdf   | test_file |       4         |
    When the script accepts given pdf file
    Then message should be displayed "File contains less than 5 lines!"

  Scenario: Pass ODT file with more than 5 lines to the script
    Given a file with
      | format | filename  | number_of_lines |
      | .odt   | test_file |       6         |
    When the script accepts given odt file
    Then message should be displayed "Last 5 list is printed successfully!"

  Scenario: Pass ODT file with less than 5 lines to the script
    Given a file with
      | format | filename  | number_of_lines |
      | .odt   | test_file |       4         |
    When the script accepts given odt file
    Then message should be displayed "File contains less than 5 lines!"

