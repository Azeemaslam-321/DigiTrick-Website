from pathlib import Path

from reportlab.lib import colors
from reportlab.lib.pagesizes import A4
from reportlab.lib.units import mm
from reportlab.pdfgen import canvas


ROOT = Path(__file__).resolve().parents[1]
OUT_DIR = ROOT / "output" / "pdf"
OUT_DIR.mkdir(parents=True, exist_ok=True)
PDF_PATH = OUT_DIR / "Digi-Trick-Consultancy-Poster.pdf"

W, H = A4
DARK = colors.HexColor("#1b1b1b")
PANEL = colors.HexColor("#303030")
CYAN = colors.HexColor("#0AE5E9")
CYAN_DARK = colors.HexColor("#0b95a8")
WHITE = colors.HexColor("#ffffff")
MUTED = colors.HexColor("#c7d0d8")
LINE = colors.HexColor("#4b4b4b")


def draw_wrapped(c, text, x, y, max_width, font="Helvetica", size=11, leading=15, color=WHITE):
    c.setFont(font, size)
    c.setFillColor(color)
    words = text.split()
    line = ""
    for word in words:
        test = f"{line} {word}".strip()
        if c.stringWidth(test, font, size) <= max_width:
            line = test
        else:
            c.drawString(x, y, line)
            y -= leading
            line = word
    if line:
        c.drawString(x, y, line)
        y -= leading
    return y


def card(c, x, y, w, h, title, body):
    c.setFillColor(PANEL)
    c.roundRect(x, y - h, w, h, 8, fill=1, stroke=0)
    c.setStrokeColor(LINE)
    c.roundRect(x, y - h, w, h, 8, fill=0, stroke=1)
    c.setFillColor(CYAN)
    c.circle(x + 7 * mm, y - 10 * mm, 3.2 * mm, fill=1, stroke=0)
    c.setFillColor(WHITE)
    c.setFont("Helvetica-Bold", 9.2)
    c.drawString(x + 13 * mm, y - 8 * mm, title)
    draw_wrapped(c, body, x + 13 * mm, y - 14 * mm, w - 17 * mm, size=7.1, leading=8.8, color=MUTED)


def main():
    c = canvas.Canvas(str(PDF_PATH), pagesize=A4)

    c.setFillColor(DARK)
    c.rect(0, 0, W, H, fill=1, stroke=0)

    c.setStrokeColor(colors.Color(1, 1, 1, alpha=0.08))
    for x in range(0, int(W), 26):
        c.line(x, 0, x, H)
    for y in range(0, int(H), 26):
        c.line(0, y, W, y)

    c.setFillColor(colors.Color(0.04, 0.9, 0.92, alpha=0.18))
    c.circle(W - 28 * mm, H - 34 * mm, 58 * mm, fill=1, stroke=0)
    c.setFillColor(colors.Color(0.04, 0.9, 0.92, alpha=0.08))
    c.circle(12 * mm, 22 * mm, 42 * mm, fill=1, stroke=0)

    logo = ROOT / "assets" / "img" / "Logo.jpg"
    if logo.exists():
        c.drawImage(str(logo), 18 * mm, H - 42 * mm, width=24 * mm, height=24 * mm, preserveAspectRatio=True, mask="auto")

    c.setFont("Helvetica-Bold", 20)
    c.setFillColor(WHITE)
    c.drawString(47 * mm, H - 27 * mm, "Digi")
    c.setFillColor(CYAN)
    c.drawString(61 * mm, H - 27 * mm, "Trick")
    c.setFillColor(MUTED)
    c.setFont("Helvetica", 9)
    c.drawString(47 * mm, H - 33 * mm, "Consultancy Services | Lucknow, Uttar Pradesh")

    c.setFillColor(CYAN)
    c.roundRect(18 * mm, H - 62 * mm, 42 * mm, 8 * mm, 4 * mm, fill=1, stroke=0)
    c.setFillColor(colors.HexColor("#06272d"))
    c.setFont("Helvetica-Bold", 7.5)
    c.drawCentredString(39 * mm, H - 59.5 * mm, "DIGITAL SERVICES")

    c.setFillColor(WHITE)
    c.setFont("Helvetica-Bold", 35)
    c.drawString(18 * mm, H - 82 * mm, "Build Your")
    c.drawString(18 * mm, H - 97 * mm, "Digital Presence")
    c.setFillColor(CYAN)
    c.drawString(18 * mm, H - 112 * mm, "Professionally")

    intro = "Website development, app development, software solutions, SEO, digital marketing, IT training and automation services for businesses, institutes, startups and professionals."
    draw_wrapped(c, intro, 18 * mm, H - 126 * mm, 122 * mm, size=11, leading=15, color=MUTED)

    c.setFillColor(colors.HexColor("#24393c"))
    c.roundRect(18 * mm, H - 164 * mm, 166 * mm, 20 * mm, 8, fill=1, stroke=0)
    c.setFont("Helvetica-Bold", 12)
    c.setFillColor(WHITE)
    c.drawString(25 * mm, H - 153 * mm, "Website | App | Software | SEO | Training | Cloud | QA | Automation")
    c.setFont("Helvetica", 8.5)
    c.setFillColor(MUTED)
    c.drawString(25 * mm, H - 159 * mm, "Complete digital growth support from planning to launch.")

    start_y = 119 * mm
    gap = 6 * mm
    cw = 52 * mm
    ch = 25 * mm
    x1, x2, x3 = 18 * mm, 75 * mm, 132 * mm
    card(c, x1, start_y, cw, ch, "Website Development", "Business sites, landing pages, city SEO pages, forms, FAQs and launch support.")
    card(c, x2, start_y, cw, ch, "App Development", "Android, iOS and cross-platform apps for customers and internal teams.")
    card(c, x3, start_y, cw, ch, "Software Development", "CRM, dashboards, reports, admin panels and workflow tools.")
    row2_y = start_y - ch - gap
    card(c, x1, row2_y, cw, ch, "SEO & Marketing", "Local SEO, blogs, landing pages, service content and lead flow.")
    card(c, x2, row2_y, cw, ch, "IT Training", "Practical training, internships and live project exposure.")
    card(c, x3, row2_y, cw, ch, "Automation & QA", "Chatbots, enquiry handoff, workflow automation and launch testing.")

    c.setFillColor(CYAN_DARK)
    c.roundRect(18 * mm, 26 * mm, 166 * mm, 31 * mm, 8, fill=1, stroke=0)
    c.setFillColor(WHITE)
    c.setFont("Helvetica-Bold", 15)
    c.drawString(26 * mm, 46 * mm, "Ready to discuss your project?")
    c.setFont("Helvetica-Bold", 11)
    c.drawString(26 * mm, 37 * mm, "Contact Digi Trick Consultancy")
    c.setFont("Helvetica", 9)
    c.drawString(26 * mm, 31 * mm, "B-49, Tej Kumar Plaza, Hazratganj, Lucknow. 226001  |  Info@digitrick.in")

    c.setFillColor(MUTED)
    c.setFont("Helvetica", 7.5)
    c.drawCentredString(W / 2, 12 * mm, "Digi Trick Consultancy - Website, App, Software Development, Digital Marketing, SEO, IT Training, Cloud, QA and Automation")

    c.showPage()
    c.save()
    print(PDF_PATH)


if __name__ == "__main__":
    main()


