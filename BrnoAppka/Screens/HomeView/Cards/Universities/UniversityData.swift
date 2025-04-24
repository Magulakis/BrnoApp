//
//  UniversityData.swift
//  BrnoAppka
//
//  Created by Timotej  Maguľak  on 22/04/2025.
//

import Foundation

struct University: Identifiable {
    let id = UUID()
    let name: String
    let description: String
    let logoName: String
    let faculties: [String]
    let careerPaths: [String]
    let studentStats: [StudentYearStat]
    let facultyStats: [FacultyStudentStat]
}

struct UniversityData {
    static let universities: [University] = [
        University(
            name: "Masaryk University",
            description: "One of the largest universities in the Czech Republic, offering a wide range of study programs and modern facilities.",
            logoName: "masaryk",
            faculties: ["Faculty of Law", "Faculty of Medicine", "Faculty of Science", "Faculty of Arts", "Faculty of Education", "Faculty of Economics and Administration", "Faculty of Informatics", "Faculty of Social Studies", "Faculty of Sports Studies"],
            careerPaths: ["Doctor", "Lawyer", "Teacher", "Researcher", "IT Specialist", "Psychologist"],
            studentStats: [
                StudentYearStat(year: 2018, count: 32900),
                StudentYearStat(year: 2019, count: 33300),
                StudentYearStat(year: 2020, count: 33500),
                StudentYearStat(year: 2021, count: 34000),
                StudentYearStat(year: 2022, count: 34250),
                StudentYearStat(year: 2023, count: 34380)
            ],
            facultyStats: [
                FacultyStudentStat(faculty: "Faculty of Medicine", total: 5200),
                FacultyStudentStat(faculty: "Faculty of Science", total: 4700),
                FacultyStudentStat(faculty: "Faculty of Arts", total: 4600),
                FacultyStudentStat(faculty: "Faculty of Law", total: 4200),
                FacultyStudentStat(faculty: "Faculty of Education", total: 4100),
                FacultyStudentStat(faculty: "Faculty of Informatics", total: 3800),
                FacultyStudentStat(faculty: "Faculty of Economics", total: 3300),
                FacultyStudentStat(faculty: "Faculty of Social Studies", total: 3100),
                FacultyStudentStat(faculty: "Faculty of Sports Studies", total: 1280)
            ]
        ),
        University(
            name: "Brno University of Technology",
            description: "A leading technical university offering high-quality education in engineering, IT, and natural sciences.",
            logoName: "vut",
            faculties: ["Faculty of Civil Engineering", "Faculty of Mechanical Engineering", "Faculty of Electrical Engineering and Communication", "Faculty of Architecture", "Faculty of Chemistry", "Faculty of Information Technology", "Faculty of Business and Management", "Faculty of Fine Arts"],
            careerPaths: ["Engineer", "Architect", "IT Specialist", "Chemist", "Project Manager"],
            studentStats: [
                StudentYearStat(year: 2018, count: 19200),
                StudentYearStat(year: 2019, count: 19400),
                StudentYearStat(year: 2020, count: 19800),
                StudentYearStat(year: 2021, count: 20000),
                StudentYearStat(year: 2022, count: 20150),
                StudentYearStat(year: 2023, count: 20200)
            ],
            facultyStats: [
                FacultyStudentStat(faculty: "Faculty of Civil Engineering", total: 3200),
                FacultyStudentStat(faculty: "Faculty of Mechanical Engineering", total: 3100),
                FacultyStudentStat(faculty: "Faculty of Electrical Engineering and Communication", total: 2900),
                FacultyStudentStat(faculty: "Faculty of Architecture", total: 1500),
                FacultyStudentStat(faculty: "Faculty of Chemistry", total: 1400),
                FacultyStudentStat(faculty: "Faculty of Information Technology", total: 2700),
                FacultyStudentStat(faculty: "Faculty of Business and Management", total: 2600),
                FacultyStudentStat(faculty: "Faculty of Fine Arts", total: 800)
            ]
        ),
        University(
            name: "Mendel University in Brno",
            description: "A modern university focused on agriculture, forestry, and economics.",
            logoName: "mendel",
            faculties: ["Faculty of AgriSciences", "Faculty of Forestry and Wood Technology", "Faculty of Business and Economics", "Faculty of Horticulture", "Faculty of Regional Development and International Studies"],
            careerPaths: ["Agronomist", "Economist", "Forester", "Researcher"],
            studentStats: [
                StudentYearStat(year: 2018, count: 7500),
                StudentYearStat(year: 2019, count: 7700),
                StudentYearStat(year: 2020, count: 7850),
                StudentYearStat(year: 2021, count: 7900),
                StudentYearStat(year: 2022, count: 7920),
                StudentYearStat(year: 2023, count: 8000)
            ],
            facultyStats: [
                FacultyStudentStat(faculty: "Faculty of AgriSciences", total: 2500),
                FacultyStudentStat(faculty: "Faculty of Forestry and Wood Technology", total: 1800),
                FacultyStudentStat(faculty: "Faculty of Business and Economics", total: 2000),
                FacultyStudentStat(faculty: "Faculty of Horticulture", total: 1000),
                FacultyStudentStat(faculty: "Faculty of Regional Development", total: 700)
            ]
        ),
        University(
            name: "University of Veterinary Sciences Brno",
            description: "A specialized institution offering veterinary and animal science education in the Czech Republic.",
            logoName: "vfu",
            faculties: ["Faculty of Veterinary Medicine", "Faculty of Veterinary Hygiene and Ecology"],
            careerPaths: ["Veterinarian", "Food Inspector", "Animal Scientist"],
            studentStats: [
                StudentYearStat(year: 2018, count: 2800),
                StudentYearStat(year: 2019, count: 2900),
                StudentYearStat(year: 2020, count: 2950),
                StudentYearStat(year: 2021, count: 3000),
                StudentYearStat(year: 2022, count: 3050),
                StudentYearStat(year: 2023, count: 3100)
            ],
            facultyStats: [
                FacultyStudentStat(faculty: "Faculty of Veterinary Medicine", total: 1800),
                FacultyStudentStat(faculty: "Faculty of Veterinary Hygiene and Ecology", total: 1300)
            ]
        ),
        University(
            name: "Janáček Academy of Performing Arts",
            description: "Renowned for its music and theatre programs, JAMU nurtures talents in performance and direction.",
            logoName: "jamu",
            faculties: ["Faculty of Music", "Faculty of Theatre"],
            careerPaths: ["Performer", "Director", "Composer", "Educator"],
            studentStats: [
                StudentYearStat(year: 2018, count: 600),
                StudentYearStat(year: 2019, count: 650),
                StudentYearStat(year: 2020, count: 670),
                StudentYearStat(year: 2021, count: 680),
                StudentYearStat(year: 2022, count: 690),
                StudentYearStat(year: 2023, count: 700)
            ],
            facultyStats: [
                FacultyStudentStat(faculty: "Faculty of Music", total: 400),
                FacultyStudentStat(faculty: "Faculty of Theatre", total: 300)
            ]
        ),
        University(
            name: "University of Defence",
            description: "Trains professionals for the Czech Armed Forces, focusing on military technology, medicine, and security.",
            logoName: "unob",
            faculties: ["Faculty of Military Technology", "Faculty of Military Health Sciences", "Faculty of Military Leadership"],
            careerPaths: ["Military Engineer", "Army Doctor", "Security Specialist"],
            studentStats: [
                StudentYearStat(year: 2018, count: 1400),
                StudentYearStat(year: 2019, count: 1450),
                StudentYearStat(year: 2020, count: 1500),
                StudentYearStat(year: 2021, count: 1520),
                StudentYearStat(year: 2022, count: 1550),
                StudentYearStat(year: 2023, count: 1600)
            ],
            facultyStats: [
                FacultyStudentStat(faculty: "Faculty of Military Technology", total: 700),
                FacultyStudentStat(faculty: "Faculty of Military Health Sciences", total: 500),
                FacultyStudentStat(faculty: "Faculty of Military Leadership", total: 400)
            ]
        ),
        University(
            name: "NEWTON University",
            description: "A private institution focused on modern economics, management, and psychology education.",
            logoName: "newton",
            faculties: ["School of Business"],
            careerPaths: ["Entrepreneur", "Manager", "Consultant", "Business Analyst"],
            studentStats: [
                StudentYearStat(year: 2018, count: 1600),
                StudentYearStat(year: 2019, count: 1650),
                StudentYearStat(year: 2020, count: 1700),
                StudentYearStat(year: 2021, count: 1720),
                StudentYearStat(year: 2022, count: 1740),
                StudentYearStat(year: 2023, count: 1750)
            ],
            facultyStats: [
                FacultyStudentStat(faculty: "School of Business", total: 1750)
            ]
        ),
        University(
            name: "STING Academy",
            description: "Specializes in economic and business studies with practical-oriented education.",
            logoName: "sting",
            faculties: ["Faculty of Economics"],
            careerPaths: ["Accountant", "Auditor", "Banker", "Financial Analyst"],
            studentStats: [
                StudentYearStat(year: 2018, count: 700),
                StudentYearStat(year: 2019, count: 720),
                StudentYearStat(year: 2020, count: 740),
                StudentYearStat(year: 2021, count: 760),
                StudentYearStat(year: 2022, count: 770),
                StudentYearStat(year: 2023, count: 780)
            ],
            facultyStats: [
                FacultyStudentStat(faculty: "Faculty of Economics", total: 780)
            ]
        )
    ]
}
