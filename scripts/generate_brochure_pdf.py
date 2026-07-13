from pathlib import Path

from reportlab.lib import colors
from reportlab.lib.pagesizes import A4
from reportlab.lib.styles import ParagraphStyle, getSampleStyleSheet
from reportlab.lib.units import mm
from reportlab.platypus import (
    BaseDocTemplate,
    Frame,
    Image,
    NextPageTemplate,
    PageBreak,
    PageTemplate,
    Paragraph,
    Spacer,
    Table,
    TableStyle,
)


ROOT = Path(__file__).resolve().parents[1]
OUT_DIR = ROOT / "output" / "pdf"
OUT_DIR.mkdir(parents=True, exist_ok=True)
PDF_PATH = OUT_DIR / "Digi-Trick-Consultancy-Brochure.pdf"

PAGE_W, PAGE_H = A4
DARK = colors.HexColor("#1b1b1b")
PANEL = colors.HexColor("#2f2f2f")
PANEL_SOFT = colors.HexColor("#353535")
CYAN = colors.HexColor("#0AE5E9")
CYAN_DARK = colors.HexColor("#0b95a8")
WHITE = colors.HexColor("#FFFFFF")
TEXT = colors.HexColor("#E8EEF3")
MUTED = colors.HexColor("#B7C2CC")
LINE = colors.HexColor("#4A4A4A")


def p(txt, style):
    return Paragraph(txt, style)


styles = getSampleStyleSheet()
styles.add(ParagraphStyle(
    name="Kicker",
    parent=styles["Normal"],
    fontName="Helvetica-Bold",
    fontSize=8,
    leading=10,
    textColor=CYAN,
    uppercase=True,
    spaceAfter=8,
))
styles.add(ParagraphStyle(
    name="CoverTitle",
    parent=styles["Title"],
    fontName="Helvetica-Bold",
    fontSize=32,
    leading=37,
    textColor=WHITE,
    spaceAfter=12,
))
styles.add(ParagraphStyle(
    name="CoverSub",
    parent=styles["Normal"],
    fontSize=11.5,
    leading=18,
    textColor=TEXT,
    spaceAfter=14,
))
styles.add(ParagraphStyle(
    name="SectionTitle",
    parent=styles["Heading1"],
    fontName="Helvetica-Bold",
    fontSize=20,
    leading=24,
    textColor=WHITE,
    spaceAfter=8,
))
styles.add(ParagraphStyle(
    name="Body",
    parent=styles["Normal"],
    fontSize=9.4,
    leading=14,
    textColor=TEXT,
))
styles.add(ParagraphStyle(
    name="Muted",
    parent=styles["Normal"],
    fontSize=8.8,
    leading=13,
    textColor=MUTED,
))
styles.add(ParagraphStyle(
    name="CardTitle",
    parent=styles["Heading3"],
    fontName="Helvetica-Bold",
    fontSize=11.5,
    leading=14,
    textColor=WHITE,
    spaceAfter=4,
))
styles.add(ParagraphStyle(
    name="Tiny",
    parent=styles["Normal"],
    fontSize=7.8,
    leading=10,
    textColor=MUTED,
))


def draw_bg(canvas, doc):
    canvas.saveState()
    canvas.setFillColor(DARK)
    canvas.rect(0, 0, PAGE_W, PAGE_H, fill=1, stroke=0)
    canvas.setFillColor(colors.Color(0.04, 0.9, 0.92, alpha=0.10))
    canvas.circle(PAGE_W - 35 * mm, PAGE_H - 36 * mm, 55 * mm, fill=1, stroke=0)
    canvas.setStrokeColor(colors.Color(1, 1, 1, alpha=0.08))
    canvas.setLineWidth(0.4)
    for x in range(0, int(PAGE_W), 34):
        canvas.line(x, 0, x, PAGE_H)
    for y in range(0, int(PAGE_H), 34):
        canvas.line(0, y, PAGE_W, y)
    canvas.restoreState()


def draw_footer(canvas, doc):
    canvas.saveState()
    canvas.setStrokeColor(LINE)
    canvas.setLineWidth(0.5)
    canvas.line(18 * mm, 16 * mm, PAGE_W - 18 * mm, 16 * mm)
    canvas.setFillColor(MUTED)
    canvas.setFont("Helvetica", 7.5)
    canvas.drawString(18 * mm, 10 * mm, "Digi Trick Consultancy | Website, App, Software, SEO, IT Training, Cloud, QA and Automation")
    canvas.drawRightString(PAGE_W - 18 * mm, 10 * mm, f"Page {doc.page}")
    canvas.restoreState()


def draw_page(canvas, doc):
    draw_bg(canvas, doc)
    draw_footer(canvas, doc)


def panel_table(data, widths, bg=PANEL):
    table = Table(data, colWidths=widths, hAlign="LEFT")
    table.setStyle(TableStyle([
        ("BACKGROUND", (0, 0), (-1, -1), bg),
        ("BOX", (0, 0), (-1, -1), 0.6, LINE),
        ("INNERGRID", (0, 0), (-1, -1), 0.35, colors.HexColor("#464646")),
        ("VALIGN", (0, 0), (-1, -1), "TOP"),
        ("LEFTPADDING", (0, 0), (-1, -1), 9),
        ("RIGHTPADDING", (0, 0), (-1, -1), 9),
        ("TOPPADDING", (0, 0), (-1, -1), 9),
        ("BOTTOMPADDING", (0, 0), (-1, -1), 9),
    ]))
    return table


def chip_table(chips, columns=4):
    rows = []
    for i in range(0, len(chips), columns):
        row = chips[i:i + columns]
        while len(row) < columns:
            row.append("")
        rows.append([p(item, styles["Tiny"]) if item else "" for item in row])
    table = Table(rows, colWidths=[(PAGE_W - 42 * mm) / columns] * columns, hAlign="LEFT")
    table.setStyle(TableStyle([
        ("BACKGROUND", (0, 0), (-1, -1), PANEL_SOFT),
        ("BOX", (0, 0), (-1, -1), 0.4, LINE),
        ("INNERGRID", (0, 0), (-1, -1), 0.3, LINE),
        ("LEFTPADDING", (0, 0), (-1, -1), 7),
        ("RIGHTPADDING", (0, 0), (-1, -1), 7),
        ("TOPPADDING", (0, 0), (-1, -1), 6),
        ("BOTTOMPADDING", (0, 0), (-1, -1), 6),
        ("TEXTCOLOR", (0, 0), (-1, -1), TEXT),
    ]))
    return table


def build_story():
    logo = ROOT / "assets" / "img" / "Logo.jpg"
    story = []

    brand_row = []
    if logo.exists():
        brand_row.append(Image(str(logo), width=28 * mm, height=28 * mm))
    else:
        brand_row.append(p("DigiTrick", styles["SectionTitle"]))
    brand_row.append(p("<b>Digi<span color='#0AE5E9'>Trick</span> Consultancy</b><br/><font color='#B7C2CC'>Consultancy Services | Lucknow, Uttar Pradesh</font>", styles["Body"]))
    story.append(Table([brand_row], colWidths=[34 * mm, 120 * mm], hAlign="LEFT", style=[
        ("VALIGN", (0, 0), (-1, -1), "MIDDLE"),
        ("LEFTPADDING", (0, 0), (-1, -1), 0),
        ("RIGHTPADDING", (0, 0), (-1, -1), 8),
    ]))
    story.append(Spacer(1, 32))
    story.append(p("COMPANY BROCHURE", styles["Kicker"]))
    story.append(p("Website, App, Software Development & IT Training Company in Lucknow", styles["CoverTitle"]))
    story.append(p("Digi Trick Consultancy helps businesses, institutes, startups and professionals build a stronger digital presence with website development, mobile app development, custom software, SEO, digital marketing, IT training, cloud, QA and automation support.", styles["CoverSub"]))
    story.append(Spacer(1, 10))

    metrics = [
        [p("<b><font color='#0AE5E9'>360 Degree</font></b><br/>Digital service support", styles["Body"]),
         p("<b><font color='#0AE5E9'>SEO Ready</font></b><br/>Page and content structure", styles["Body"]),
         p("<b><font color='#0AE5E9'>Mobile First</font></b><br/>Responsive user experience", styles["Body"]),
         p("<b><font color='#0AE5E9'>India Wide</font></b><br/>Multi-city service coverage", styles["Body"])]
    ]
    story.append(panel_table(metrics, [39 * mm] * 4, bg=PANEL))
    story.append(Spacer(1, 24))
    story.append(panel_table([[
        p("<b>Call:</b> Contact Digi Trick Consultancy<br/><b>Email:</b> Info@digitrick.in<br/><b>Address:</b> B-49, Tej Kumar Plaza, Hazratganj, Lucknow. 226001", styles["Body"])
    ]], [160 * mm], bg=colors.HexColor("#24393c")))

    story.append(PageBreak())

    story.append(p("OUR CORE SERVICES", styles["Kicker"]))
    story.append(p("Professional Digital Services", styles["SectionTitle"]))
    story.append(p("Choose one focused service or combine multiple capabilities into one practical roadmap for your business.", styles["Muted"]))
    story.append(Spacer(1, 12))
    services = [
        ("Website Development", "Responsive business websites, landing pages, service pages, local SEO pages, contact forms, maps, FAQs and launch-ready structure."),
        ("App Development", "Android, iOS and cross-platform apps for bookings, education, ecommerce, field teams, support and internal workflows."),
        ("Software Development", "CRM tools, dashboards, reporting systems, admin panels, lead tracking, role-based access and workflow automation."),
        ("Digital Marketing & SEO", "Local SEO, service content, city pages, Google Business Profile direction, blogs, landing pages and campaign support."),
        ("IT Training & Internship", "Practical training for students, freshers and professionals with live project exposure and portfolio guidance."),
        ("AI Automation & Chatbot", "FAQ chatbots, enquiry capture, enquiry handoff, lead routing, internal notifications and automation flows."),
        ("E-commerce Solutions", "Product catalogue, checkout or enquiry flow, product SEO, order management and mobile commerce planning."),
        ("Cloud & Deployment", "Hosting, deployment, SSL, backup planning, migration support and performance readiness."),
        ("QA & Testing", "Functional, UI, mobile, form, link, checkout and production-readiness testing before launch."),
    ]
    rows = []
    for i in range(0, len(services), 3):
        rows.append([
            p(f"<b>{title}</b><br/>{desc}", styles["Body"])
            for title, desc in services[i:i + 3]
        ])
    story.append(panel_table(rows, [52 * mm] * 3, bg=PANEL))

    story.append(Spacer(1, 22))
    story.append(p("WHY CLIENTS CHOOSE US", styles["Kicker"]))
    why = [
        "Complete website, app, software, marketing, SEO and training support from one team.",
        "Professional content written around real services, city intent and customer questions.",
        "Mobile responsive layouts with clear CTA, enquiry detail, form and map visibility.",
        "Production-ready basics: metadata, sitemap, robots, schema direction, footer and launch QA.",
        "Practical execution for local businesses, institutes, service providers and growing teams.",
    ]
    story.append(panel_table([[p("<br/>".join([f"- {item}" for item in why]), styles["Body"])]], [160 * mm], bg=PANEL_SOFT))

    story.append(PageBreak())

    story.append(p("OUR WORK PROCESS", styles["Kicker"]))
    story.append(p("From Requirement to Launch", styles["SectionTitle"]))
    process = [
        ("01 Requirement", "Understand business, audience, services, location, goals and current digital gaps."),
        ("02 Planning", "Plan pages, sections, content, SEO keywords, CTA flow, modules and launch priorities."),
        ("03 Execution", "Design, develop, write content, add service depth, improve navigation and build responsive pages."),
        ("04 Launch", "Check links, enquiry details, forms, mobile view, sitemap, robots, footer, schema basics and handover."),
    ]
    story.append(panel_table([[p(f"<b><font color='#0AE5E9'>{title}</font></b><br/>{desc}", styles["Body"]) for title, desc in process]], [39 * mm] * 4, bg=PANEL))
    story.append(Spacer(1, 20))

    story.append(p("CITIES WE SERVE", styles["Kicker"]))
    story.append(p("Useful local content, not thin doorway pages.", styles["Muted"]))
    story.append(Spacer(1, 8))
    cities = ["Lucknow", "Kanpur", "Prayagraj", "Varanasi", "Ayodhya", "Gorakhpur", "Noida", "Delhi NCR", "Gurgaon", "Mumbai", "Bangalore", "Hyderabad", "Pune"]
    story.append(chip_table(cities, columns=4))
    story.append(Spacer(1, 20))

    story.append(p("BEST FIT FOR", styles["Kicker"]))
    fits = [
        "Coaching institutes and training centers",
        "Clinics, consultants and professional services",
        "Retail, e-commerce and local stores",
        "Startups, agencies and B2B teams",
        "Field service, HR, real estate and operations teams",
    ]
    story.append(panel_table([[p("<br/>".join([f"- {item}" for item in fits]), styles["Body"])]], [160 * mm], bg=PANEL))
    story.append(Spacer(1, 20))

    story.append(panel_table([[
        p("<b><font color='#FFFFFF'>Ready to build a better digital presence?</font></b><br/>Contact Digi Trick Consultancy for website, app, software, SEO, training or automation support.<br/><br/><b>Send Enquiry</b> | <b>Send Enquiry</b><br/>Info@digitrick.in | digitrick.in", styles["Body"])
    ]], [160 * mm], bg=CYAN_DARK))
    return story


def main():
    doc = BaseDocTemplate(
        str(PDF_PATH),
        pagesize=A4,
        rightMargin=18 * mm,
        leftMargin=18 * mm,
        topMargin=22 * mm,
        bottomMargin=22 * mm,
    )
    frame = Frame(doc.leftMargin, doc.bottomMargin, doc.width, doc.height, id="normal")
    doc.addPageTemplates([
        PageTemplate(id="default", frames=[frame], onPage=draw_page),
    ])
    doc.build(build_story())
    print(PDF_PATH)


if __name__ == "__main__":
    main()



