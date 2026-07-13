#import "@local/dach-resume:0.1.0": *

#show: resume.with(
  name: "MAXIMILIAN SCHMIDT",
  title: "INFORMATIKER / COMPUTER SCIENTIST",
  photo: image("image.png", width: 100%, height: 100%, fit: "cover"),
  contacts: (
    contact("mail", link("mailto:maximilian.schmidt@email.de")[maximilian.schmidt\@email.de]),
    contact("linkedin", link("https://linkedin.com/in/maximilian-schmidt")[linkedin.com/in/maximilian-schmidt]),
    contact("phone", link("tel:+4917612345678")[+49 176 12345678]),
    contact("globe", link("https://maximilian-schmidt.dev")[maximilian-schmidt.dev]),
    contact("location", [Musterstraße 12, 80333 München, Deutschland]),
    contact("calendar", [12. Mai 1993]),
  ),
)

== PROFIL

Motivierter Informatiker mit mehrjähriger Erfahrung in der Analyse, Konzeption und Entwicklung skalierbarer Softwarelösungen. Spezialisiert auf Backend-Entwicklung, verteilte Systeme und Cloud-Technologien. Ausgeprägte Problemlösungsfähigkeit, strukturierte Arbeitsweise und starkes Interesse an sauberen Architekturen und modernen Technologien.

#v(2mm)

== BERUFSERFAHRUNG

#work(
  "Softwareentwickler",
  [TechSolutions GmbH, München],
  "04/2021 – heute",
)[
  - Entwicklung und Wartung von skalierbaren Webanwendungen im Bereich FinTech.
  - Konzeption und Implementierung von RESTful APIs mit Java und Spring Boot.
  - Mitarbeit an der Migration von monolithischen Anwendungen zu Microservices (Docker, Kubernetes).
  - Optimierung von Datenbankabfragen und Verbesserung der Anwendungsperformance.
  - Durchführung von Code-Reviews und Mentoring von Junior Developers.
]

#work(
  "Junior Softwareentwickler",
  [DigitalCraft AG, Stuttgart],
  "07/2018 – 03/2021",
)[
  - Entwicklung von Webanwendungen mit Java, JavaScript und React.
  - Unterstützung bei der Anforderungsanalyse und technischen Konzeption.
  - Implementierung von automatisierten Tests und CI/CD-Pipelines.
  - Fehleranalyse und -behebung sowie Pflege der bestehenden Systeme.
]

#work(
  "Werkstudent Softwareentwicklung",
  [DigitalCraft AG, Stuttgart],
  "10/2017 – 06/2018",
)[
  - Unterstützung des Entwicklungsteams bei der Umsetzung von Softwaremodulen.
  - Durchführung von Recherchen und Prototyping neuer Technologien.
  - Dokumentation und Unterstützung im Testprozess.
]

== AUSBILDUNG

#edu(
  "M.Sc. Informatik",
  [Technische Universität München],
  "10/2014 – 09/2017",
)[
  Schwerpunkt: Software Engineering, Verteilte Systeme, Datenbanken \
  Abschlussnote: 1,6
]

#edu(
  "B.Sc. Informatik",
  [Ludwig-Maximilians-Universität München],
  "10/2011 – 09/2014",
)[
  Abschlussnote: 1,9
]

== TECHNISCHE KENNTNISSE

#details(
  ("Programmiersprachen", [Java, Kotlin, Python, JavaScript/TypeScript, SQL]),
  ("Frameworks & Bibliotheken", [Spring Boot, Spring Data, Hibernate, React, Node.js, Express]),
  ("Datenbanken", [PostgreSQL, MySQL, MongoDB, Redis]),
  ("DevOps & Tools", [Docker, Kubernetes, Git, Jenkins, GitLab CI, AWS (S3, EC2, RDS)]),
  ("Weitere Kenntnisse", [REST, gRPC, GraphQL, JUnit, Mockito, Agile/Scrum]),
)

== PROJEKTE

#project("BudgetPlanner (2023)", kind: [Private Projektarbeit])[
  Webanwendung zur persönlichen Finanzplanung mit Ausgabenanalyse und Budget-Tracking. \
  Technologien: React, Spring Boot, PostgreSQL, Docker, Chart.js
]

#project("EventService (2022)", kind: [Teamprojekt im Studium])[
  Microservice-basierte Plattform für Eventmanagement mit Benutzerverwaltung und Ticketing. \
  Technologien: Java, Spring Boot, MongoDB, Kafka, Kubernetes
]

== ZERTIFIKATE

#grid(
  columns: (25mm, 1fr),
  row-gutter: 1mm,
  text(fill: rgb("#243d60"))[03/2023], [AWS Certified Developer – Associate #h(2mm)#text(fill: luma(42%))[|]#h(2mm)Amazon Web Services],
  text(fill: rgb("#243d60"))[11/2021], [Oracle Certified Professional, Java SE 11 Developer #h(2mm)#text(fill: luma(42%))[|]#h(2mm)Oracle],
)

== SPRACHEN

#languages(
  ("Deutsch", [Muttersprache]),
  ("Englisch", [Sehr gute Kenntnisse (C1)]),
  ("Französisch", [Grundkenntnisse (A2)]),
)
