# LaTeX Resume Template

## Overview

This repository contains a LaTeX template for creating professional resumes. The provided template is fully customizable and includes sections for personal data, education, career experience, and skills. The template is set up to support German language documents and includes an optional GitHub link.

## Features

- **Personal Data Section**: Includes name, birthdate, address, phone, email, and an optional GitHub profile link.
- **Education Section**: Lists educational qualifications with customizable year information, school name, and degree.
- **Career Section**: Details professional experience with job titles and descriptions.
- **Skills Section**: Lists skills and programming languages with proficiency levels.

## Prerequisites

To use the LaTeX template, you need:
- A LaTeX distribution installed on your system (e.g., TeX Live, MacTeX).
- A LaTeX editor (e.g., Texmaker) to edit the template.

## Template Overview

### Personal Data

The `\personaldata` command allows you to set and display personal information including:
- Name
- Birthdate
- Address
- Phone number
- Email address
- GitHub profile (optional)

### Education

Use the `\educationitem` command to add entries to the education section. Each entry includes:
- Year(s)
- School name
- Degree

### Career

The career section is designed to list your professional experiences in a structured format.

### Skills

The skills section lists programming languages or other skills along with proficiency levels.

## Customization

1. **Edit Personal Data**

   Modify the `\name`, `\birthdate`, `\address`, `\phone`, `\email`, and optionally `\github` commands in the LaTeX file to update your personal information.

2. **Update Education**

   Use the `\educationitem{Year(s)}{School Name}{Degree}` command to add your educational background. Update the `\education` command with your entries.

3. **Add Career Experience**

   Update the career section of the LaTeX file with your job titles and descriptions.

4. **List Skills**

   Update the skills section to include programming languages or other skills and their proficiency levels.

## Compiling the Document

To compile the LaTeX document into a PDF, use a LaTeX editor like Texmaker or run the following command in your terminal:

```bash
pdflatex resume.tex
```

This will generate a resume.pdf file with your resume.