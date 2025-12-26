# Day 03 - Labs: Thermal Simulation of Semiconductor Packages with ANSYS Icepak

This lab focuses on performing thermal analysis of semiconductor packages using **ANSYS Icepak**, a tool within **ANSYS Electronics Desktop (AEDT)**. The main goal is to simulate the thermal behavior of a **Flip-chip BGA (Ball Grid Array) package** under specified conditions.

---

## 🧊 Introduction

**ANSYS Electronics Desktop (AEDT)** is a unified platform integrating multiple simulation tools:

- **HFSS** – 3D EM simulation
- **Maxwell** – Low-frequency EM simulation
- **Q3D Extractor** – Parasitic extraction
- **Icepak** – Thermal and airflow simulation
- **SIwave** – Signal & power integrity
- **Circuit Designer** – Circuit-level analysis

Icepak is used here for **thermal analysis of semiconductor packages**.

---

## 🛠️ Lab Objectives

1. Create and configure a Flip-chip BGA package in Icepak.
2. Assign materials and thermal power sources.
3. Generate and inspect mesh quality.
4. Run thermal simulations and analyze temperature distribution.
5. Explore effects of different package types on thermal performance.

---

## 📦 Lab Procedure

### Step 1: Insert Icepak Design

1. Open **ANSYS Workbench**.
2. Navigate to `Project -> Insert Icepak Design`.
3. Launch Icepak layout via the top toolbar.

---

### Step 2: Create a Flip-chip BGA Package

1. Go to `Icepak -> Toolkit -> Geometry -> Packages -> Flipchip_BGA`.
2. Set parameters:
   - **xLength:** 15 mm  
   - **yLength:** 15 mm  
   - **Package Thickness:** 3 mm  
   - **Model Type:** Detailed  
   - **Symmetry:** Full
3. Click **OK** to generate the 3D model.

---

### Step 3: Explore the Model Structure

Expand the **Model Tree** to examine:

- Substrate
- Die
- Underfill
- Solder bumps
- Encapsulant

---

### Step 4: Assign Thermal Power

1. Navigate to `Project Manager -> Thermal`.
2. Enter **Power = 1 W**.
3. Click **OK**.

---

### Step 5: Assign Thermal Sources

1. Select `Flipchip-BGA1_substrate`.
2. Right-click → `Assign Thermal -> Source`.
3. Set **Thermal Condition = Ambient Temperature**.
4. Remove any extra elements (e.g., `Flipchip_BGA_trace1`) under the Thermal node.

---

### Step 6: Assign Temperature Monitors

1. Select substrate → `Assign Monitor -> Point` → tick **Temperature** → Click OK.
2. Repeat for **Die** and **Underfill** components.

---

### Step 7: Generate Mesh

1. Go to the **Mesh** tab.
2. Click **Simulation -> Generate Mesh**.
3. Save the project when prompted.

---

### Step 8: Inspect Mesh Quality

1. In **Mesh Visualization**, click **Quality**.
2. Check parameters such as:
   - Face alignment
   - Skewness
   - Volume

---

### Step 9: Validate Setup

1. Click **Validate** from the top menu.
2. Ensure all checks show **green ticks**.

---

### Step 10: Run Simulation & Plot Results

1. Click **Analyze All** and select the Flipchip BGA package.
2. Navigate to `Plot Field -> Temperature`.
3. Configure output options:
   - Enable Gaussian smoothing
   - Plot on surface only
4. Click **OK → Done**.

> ✅ Thermal simulation of the Flipchip BGA package is now complete for **1 W power input**.

---

## 🔍 Observations

- Maximum and minimum temperature locations.
- Hot spots and thermal gradients.
- Effects of materials and package dimensions.
- Comparison with other package types (optional).



