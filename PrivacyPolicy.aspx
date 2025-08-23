<%@ Page Title="Privacy Policy - DigiTrick Consultancy" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="PrivacyPolicy.aspx.cs" Inherits="PrivacyPolicy" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .policy-container {
            max-width: 900px;
            margin: auto;
            padding: 20px;
            background: #fff;
            border-radius: 12px;
            box-shadow: 0 0 15px rgba(0,0,0,0.08);
        }
        .policy-container h1 {
            font-size: 2rem;
            margin-bottom: 1rem;
            font-weight: 700;
            color: #222;
            text-align: center;
        }
        .policy-container h2 {
            margin-top: 1.5rem;
            font-size: 1.4rem;
            color: #d63333;
        }
        .policy-container h3 {
            font-size: 1.1rem;
            margin-top: 1rem;
            font-weight: 600;
        }
        .policy-container p, 
        .policy-container ul {
            font-size: 1rem;
            line-height: 1.6;
            color: #444;
        }
        .policy-container ul {
            padding-left: 20px;
        }
        .policy-container .footer-note {
            margin-top: 2rem;
            padding: 15px;
            background: #f8f9fa;
            border-left: 4px solid #d63333;
            font-size: 0.95rem;
            color: #555;
        }
        /* Responsive */
        @media (max-width: 768px) {
            .policy-container {
                padding: 15px;
            }
            .policy-container h1 {
                font-size: 1.6rem;
            }
            .policy-container h2 {
                font-size: 1.2rem;
            }
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container my-5">
        <div class="policy-container">
            <h1>Privacy Policy</h1>
            <p><strong>Effective Date:</strong> June 2025</p>

            <p>
                At Digi Trick Consultancy, we prioritize the confidentiality and security of your personal information. 
                This Privacy Policy explains how we collect, use, process, store, and disclose your data while ensuring 
                compliance with applicable privacy laws. By engaging with our services, you consent to the practices 
                described below.
            </p>

            <h2>1. Introduction</h2>
            <p>
                Digi Trick Consultancy specializes in delivering innovative digital and IT solutions to empower businesses. 
                Trust and transparency are the cornerstones of our operations, and we are committed to protecting your 
                personal information in accordance with global data protection standards.
            </p>
            <ul>
                <li>Visitors to our website</li>
                <li>Clients and prospective clients</li>
                <li>Business partners and vendors</li>
                <li>Job applicants</li>
            </ul>

            <h2>2. Information We Collect</h2>
            <h3>Directly Provided Information:</h3>
            <ul>
                <li>Contact details (name, email, phone number, company, job title)</li>
                <li>Information shared during business engagements, contracts, or partnerships.</li>
            </ul>

            <h3>Automatically Collected Data (Website Usage):</h3>
            <ul>
                <li>IP address, browser type, device info, pages visited</li>
                <li>Cookies and analytics data (you can manage cookie preferences)</li>
            </ul>

            <h3>Third-Party Sources:</h3>
            <ul>
                <li>Publicly available professional data (LinkedIn, etc.)</li>
                <li>Verified third-party providers for marketing</li>
            </ul>

            <p><strong>Sensitive Data:</strong> We do not intentionally collect sensitive data unless legally required.</p>

            <h2>3. How We Use Your Information</h2>
            <ul>
                <li>Service delivery & client support</li>
                <li>Communication & marketing (opt-out available)</li>
                <li>Operational & security needs</li>
            </ul>

            <h2>4. Legal Basis for Processing</h2>
            <ul>
                <li>Contractual necessity</li>
                <li>Legitimate interests</li>
                <li>Consent (withdraw anytime)</li>
                <li>Legal compliance</li>
            </ul>

            <h2>5. Data Security & Storage</h2>
            <p>Your data is stored on secure servers with encryption and access controls. While we implement strict measures, no online transmission is 100% secure.</p>

            <h2>6. Data Sharing & Transfers</h2>
            <p>We do not sell your data. It may be shared with trusted partners, service providers, or affiliates under strict confidentiality agreements.</p>

            <h2>7. Data Retention</h2>
            <p>Data is retained only as long as necessary or legally required.</p>

            <h2>8. Your Rights</h2>
            <p>
                You may request access, correction, deletion, restriction, objection, portability, or withdraw consent. 
                Contact: <a href="mailto:privacy@digitrick.com">privacy@digitrick.com</a>
            </p>

            <h2>9. Children’s Privacy</h2>
            <p>Our services are not intended for individuals under 18.</p>

            <h2>10. Updates & Contact</h2>
            <p>We may revise this policy periodically. The latest version will always be posted here.</p>

            <div class="footer-note">
                For questions: <a href="mailto:privacy@digitrick.com">privacy@digitrick.com</a><br />
                Digi Trick Consultancy – Secure Digital Experience
            </div>
        </div>
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ScriptHolder" Runat="Server">
</asp:Content>
