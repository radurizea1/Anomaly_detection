Tema:
Analiza seturilor de date folosite pentru antrenare (en: Training Dataset) începe cu un prim pas
prin care se detectează anomaliile (en: outliers). Intuitiv, o anomalie în setul de date poate fi
înțeleasă ca un subset al datelor de antrenare care nu se potrivește cu întreg setul de date. Scopul
primei metode pe care o vom proiecta și implementa este să înțelegem ce înseamnă această
(ne)potrivire.
Această metodă se numește detecția anomaliilor (en: Anomaly Detection) și este necesară
și utilă în cazul modelelor care folosesc datele de antrenare și doresc să aibă un set de date
consistent, fără greșeli, și să determine anomaliile din datele de antrenare / testare.