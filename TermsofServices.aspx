<%@ Page Title="Terms of Services - DigiTrick Consultancy" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="TermsofServices.aspx.cs" Inherits="TermsofServices" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .terms-wrapper {
            background-color: #f9f9f9;
            border-radius: 12px;
            padding: 40px;
            box-shadow: 0 4px 15px rgba(0,0,0,0.08);
        }
        .terms-wrapper h1 {
            font-size: 2rem;
            font-weight: 700;
            color: #222;
            margin-bottom: 20px;
            text-align: center;
        }
        .terms-wrapper h2 {
            font-size: 1.3rem;
            margin-top: 25px;
            color: #0d6efd;
            font-weight: 600;
        }
        .terms-wrapper p, 
        .terms-wrapper ul {
            font-size: 1rem;
            color: #444;
            line-height: 1.7;
        }
        .terms-wrapper ul li {
            margin-bottom: 6px;
        }
        .terms-wrapper hr {
            margin: 30px 0;
        }
        .terms-footer {
            text-align: center;
            font-size: 0.9rem;
            color: #6c757d;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container my-5">
        <div class="terms-wrapper">
            <h1>Terms and Conditions</h1>
            <p class="text-center"><strong>Effective Date:</strong> June 2025</p>

            <h2>1. Acceptance of Terms</h2>
            <p>By engaging with <strong>Digi Trick Consultancy</strong> (via our website, services, or communications), you confirm that you have read, understood, and agreed to these Terms and Conditions. If you do not agree, please refrain from using our services.</p>

            <h2>2. Services Provided</h2>
            <p>Digi Trick Consultancy offers:</p>
            <ul>
                <li>IT consulting and digital solutions</li>
                <li>Software development and system integration</li>
                <li>Business process automation</li>
                <li>Data analytics and cloud services</li>
                <li>Other related professional services</li>
            </ul>

            <h2>3. Client Responsibilities</h2>
            <ul>
                <li>Provide accurate and complete information required for service delivery.</li>
                <li>Obtain necessary licenses or permissions for third-party software/data used in collaboration with us.</li>
                <li>Ensure compliance with applicable laws when using our services.</li>
            </ul>

            <h2>4. Fees & Payment</h2>
            <ul>
                <li>Fees will be specified in proposals, contracts, or invoices.</li>
                <li>Payment terms (e.g., net 30 days) will be agreed upon before project commencement.</li>
                <li>Late payments may incur interest (as per applicable laws) or suspension of services.</li>
            </ul>

            <h2>5. Intellectual Property</h2>
            <ul>
                <li><strong>Pre-existing IP:</strong> Each party retains ownership of their pre-existing intellectual property.</li>
                <li><strong>Developed IP:</strong> Unless otherwise agreed, Digi Trick Consultancy retains ownership of tools, frameworks, and methodologies used. Client-specific deliverables will be licensed or transferred as per contract terms.</li>
                <li><strong>Third-Party Tools:</strong> Licensing and usage rights for third-party software remain subject to their respective terms.</li>
            </ul>

            <h2>6. Confidentiality</h2>
            <p>Both parties agree to:</p>
            <ul>
                <li>Protect confidential information (business strategies, technical data, etc.).</li>
                <li>Not disclose such information to unauthorized parties without written consent.</li>
                <li>Obligations survive termination of the engagement.</li>
            </ul>

            <h2>7. Data Protection & Privacy</h2>
            <ul>
                <li>We adhere to our Privacy Policy (available on our website) in handling personal data.</li>
                <li>Clients must ensure they have lawful rights to share any data processed by us.</li>
            </ul>

            <h2>8. Limitation of Liability</h2>
            <p>Digi Trick Consultancy is not liable for:</p>
            <ul>
                <li>Indirect, incidental, or consequential damages (e.g., lost profits).</li>
                <li>Issues arising from client-provided data, third-party integrations, or force majeure events (e.g., natural disasters).</li>
            </ul>
            <p>Liability is capped at the total fees paid for the relevant service.</p>

            <h2>9. Termination</h2>
            <ul>
                <li>Either party may terminate services with written notice if the other breaches these terms.</li>
                <li>Upon termination, the client must pay for services rendered up to the termination date.</li>
            </ul>

            <h2>10. Dispute Resolution</h2>
            <ul>
                <li>Parties agree to negotiate disputes in good faith.</li>
                <li>If unresolved, disputes may be submitted to arbitration in [Jurisdiction], governed by [Applicable Law].</li>
            </ul>

            <h2>11. Amendments</h2>
            <p>We may update these terms periodically. Continued use of services after changes constitutes acceptance.</p>

            <h2>12. Governing Law</h2>
            <p>These Terms are governed by the laws of [Jurisdiction], without regard to conflict-of-law principles.</p>

            <h2>13. Contact Us</h2>
            <p>For questions, contact: <br />
            Email: <a href="mailto:legal@digitrick.com">legal@digitrick.com</a></p>

            <hr />
            <p class="terms-footer">By using our services, you acknowledge that you have read, understood, and agreed to these Terms and Conditions.</p>
        </div>
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ScriptHolder" Runat="Server">
</asp:Content>
