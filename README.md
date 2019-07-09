# Google Chrome Hardening

เพิ่มความแข็งแกร่งให้กับ Google Chrome ด้วย Google Chrome Policies

## รายการ policies
- ปิดการใช้งานการรับรองความถูกต้องแบบไม่ต้องกรอกพินสำหรับ remote access hosts (Disable PIN-less authentication for remote access hosts)
- ลบ cookies ทุกครั้งที่ปิด browser (Keep cookies for the duration of the session)
- ปิดการเล่น Flash plugin แบบอัตโนมัติ (Flash plugin click to play)
- ปิดการบันทึกรหัสผ่านไปยังตัวจัดการรหัสผ่าน (Disable saving passwords to the password manager)
- ปิดใช้งานปลั๊กอินที่ล้าสมัยแล้ว (Disable running plugins that are outdated)
- ปิดการใช้งานแอปที่ทำงานอยู่เบื้องหลังต่อไปเมื่อปิด Google Chrome (Disable continue running background apps when Google Chrome is closed)
- ปิดการป้อนข้อมูลอัตโนมัติ (Disable AutoFill)
- ปิดการใช้งาน Google Cloud Print Proxy (Disable Google Cloud Print Proxy)
- ปิดการรายงานการใช้งานและข้อมูลที่เกี่ยวข้องกับความผิดพลาด (Disable reporting of usage and crash-related data)
- เปิด Site Isolation สำหรับทุกไซต์ (Enable Site Isolation for every site)
- ปิดการส่งเอกสารไปยัง Google Cloud Print (Disable submission of documents to Google Cloud print)
- ปิดการนำเข้ารหัสผ่านที่บันทึกไว้จากเบราว์เซอร์ในการเรียกใช้ Google Chrome ครั้งแรก (Disable import saved passwords from default browser on first run)
- ปิดการซิงโครไนซ์ข้อมูลกับ Google (Disable synchronization of data with Google)
- ปิดการใช้งาน Google Translate (Disable the integrated Google Translate service on Chromium)
- ปิดการใช้งานแป้นพิมพ์บนหน้าจอ (Disable on-screen keyboard)
- ไม่อนุญาตให้ไซต์ใดๆ แสดงการแจ้งเตือนทางเดสก์ท็อป (Do not allow any site to show desktop notifications)

## ข้อมูลอ้างอิง
- [Home-Security-by-W10-Hardening](https://github.com/teusink/Home-Security-by-W10-Hardening)
- [Google Chrome Group Policy Administrative Templates](https://getadmx.com/?Category=Chrome)
- [Policy List - The Chromium Projects](https://www.chromium.org/administrators/policy-list-3)
