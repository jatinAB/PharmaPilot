# 💊 PharmaPilot  

An intelligent pharmacy automation system built using [n8n](https://n8n.io/) and **MySQL**, designed to streamline patient visits, prescriptions, billing, and delivery management.  
PharmaPilot ensures smarter, faster, and automated healthcare workflows — all without writing a single line of code.

---

## ⚙️ Features  

- 🧑‍⚕️ **Patient Management** – Simplified registration and visit tracking  
- 💊 **Medicine Automation** – Real-time stock updates and automatic alternative substitution  
- 🧾 **Dynamic Billing** – Auto-calculates invoices with live inventory sync  
- 🚚 **Smart Delivery Assignment** – Assigns agents based on rating, pincode, and workload  
- 📬 **Email Webhooks** – Sends real-time updates to patients and delivery agents via one-click status links  

---

## 🧠 Tech Stack  

- **n8n** – Visual workflow automation  
- **MySQL** – Backend database for patients, medicines, and agents  
- **Gmail API & Webhooks** – For interactive communication and live tracking  

---

## 🚀 Getting Started  

1. **Clone the repository**
   ```bash
   git clone https://github.com/JatinBandekar/PharmaPilot.git
   cd PharmaPilot
````

2. **Set up the Database**

   * Import `schema/pharma_pilot.sql` into your MySQL instance.

3. **Import Workflows**

   * Open [n8n](https://n8n.io/) → *Settings* → *Import Workflows* from the `workflows/` folder.

4. **Configure Environment**

   * Add your MySQL credentials, API keys, and email settings in the `.env` file.

---

## 📊 Workflow Highlights

* 🧾 Automated invoice generation after prescription creation
* 🔄 Real-time inventory update upon medicine assignment
* 🚚 Smart delivery routing based on pincode and load
* 💌 Interactive email notifications for delivery status updates

---

## 🩺 Purpose

PharmaPilot bridges the gap between healthcare and automation.
It empowers pharmacies to **reduce manual work**, **prevent stock errors**, and **improve delivery efficiency** — all through a no-code, connected system.

---

## 🪪 License

This project is open-source under the **MIT License**.

---

## ⭐ Acknowledgment

If you found **PharmaPilot** useful, consider giving it a ⭐ on GitHub —
your support helps promote smarter healthcare automation 🚀

