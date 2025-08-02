# 💊 n8n Smart Pharmacy

An automated workflow system built using [n8n](https://n8n.io/) and MySQL to manage patient visits, medicine prescriptions, billing, and delivery assignment — all in a smart, efficient, and scalable way.

## ⚙️ Features

- 🧑‍⚕️ Patient check & registration  
- 💊 Real-time medicine availability check  
- 🔄 Intelligent substitution with alternative medicines  
- 🧾 Dynamic billing & stock updates  
- 🚚 Delivery agent assignment based on rating, pincode & load  
- 📬 Email notifications with webhook buttons (patient & agent)


## 🚀 Getting Started

1. **Clone the repository**
   ```bash
   git clone https://github.com/your-username/n8n_smart_pharmacy.git
   cd n8n_smart_pharmacy
   ```

2. **Set up the database**
   - Import `schema/database_schema.sql` into your MySQL instance.

3. **Import workflows**
   - Open [n8n](https://n8n.io/) → Settings → Import workflows from the `workflows/` folder.

4. **Configure environment (if needed)**
   - Add your DB credentials, email settings, etc., in `.env`.

## 🧠 Tech Stack

- [n8n](https://n8n.io/) — visual automation platform
- **MySQL** — backend database for patients, medicines, agents
- **Webhooks & Gmail API** — for dynamic interaction & communication

## 📌 Notes

- The system checks medicine availability and intelligently switches to alternatives when stock is insufficient.
- Delivery agents are auto-assigned based on rating, pincode match, and workload.
- Stock is automatically updated after medicine assignment.
- Webhooks in emails let patients and agents mark delivery status with a single click.

---

🔧 Built to streamline healthcare delivery using smart, no-code automation.
