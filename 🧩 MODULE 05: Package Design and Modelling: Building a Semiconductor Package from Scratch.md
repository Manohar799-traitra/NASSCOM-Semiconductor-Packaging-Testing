# Day 05 - Package Design and Modelling: Building a Semiconductor Package from Scratch

This lab focuses on **designing and modelling a complete semiconductor package** from the ground up using **ANSYS Electronics Desktop (AEDT)**. The session covers **die and substrate creation**, **die attach material (DAM)**, **bond pads**, **wire bonds**, and **mold compound encapsulation**, preparing the model for further thermal, electrical, and mechanical simulations.

---

## 🧩 Introduction

Semiconductor package modelling is a critical stage in IC design and validation. A package not only protects the die physically but also ensures **mechanical support, thermal dissipation, and reliable electrical connections**. Accurate modelling allows engineers to simulate and optimize the package before fabrication, reducing costs and increasing yield.

In this lab, you will learn how to:

1. Build the **die** and **substrate** geometries.
2. Assign **appropriate material properties**.
3. Integrate **die attach material** and **bond pads**.
4. Create **wire bonds** connecting the die to the substrate.
5. Encapsulate the package with **mold compound**.
6. Prepare the model for **thermal and electrical simulations**.

By the end, you will have a **fully assembled 3D package model** that represents real-world semiconductor packages.

<img width="1670" height="759" alt="Image" src="https://github.com/user-attachments/assets/ade0343f-a106-4ae7-9a1e-afacc8d802d2" />
<img width="1421" height="633" alt="Image" src="https://github.com/user-attachments/assets/97ce8ef4-d3b5-448b-8c3a-b1fb2ace518a" />
---

## 🛠️ Step 1: Launch ANSYS Electronics Desktop (AEDT)

Before modelling, AEDT must be configured correctly:

1. Open **ANSYS Electronics Desktop**.
2. Choose the **project type** based on your simulation goals:
   - **Icepak** for thermal simulations (heat distribution, hot spots, airflow)
   - **HFSS 3D Layout** for electromagnetic field analysis
   - **Q3D Extractor** for parasitic extraction and interconnect simulation
3. Create a **new project** and insert a new design:
   - Name the project descriptively, e.g., `PackageModel_Day05`.
4. Configure **working units**:
   - Navigate to `Modeller → Units`.
   - Set to **millimeters (mm)** for package-scale geometries.
   - Verify units to avoid dimensional errors in later steps.
5. Save your project immediately to prevent data loss.

> **Pro Tip:** Consistently using mm or μm throughout ensures that die, substrate, and bond pad dimensions remain proportional.
<img width="1422" height="633" alt="Image" src="https://github.com/user-attachments/assets/8def6d33-a0a6-4caa-bcd7-1355033251ef" />
<img width="1421" height="639" alt="Image" src="https://github.com/user-attachments/assets/9f050b6b-72a8-4c0f-8a55-e3ead8480333" />
<img width="1171" height="612" alt="Image" src="https://github.com/user-attachments/assets/c2be8c0d-4d60-47d1-ab9b-d157b9d857a4" />
---

## 🟢 Step 2: Create the Die Geometry

The die represents the **active silicon component** of the package.

1. Navigate to `Draw → Rectangle` to define the die surface.
   - **Length:** 3 mm  
   - **Width:** 3 mm  
   - **Position:** Centered at (0,0,0) for easy alignment with substrate
2. Convert the 2D rectangle into a 3D solid:
   - `Modeler → Surface → Thicken Sheet`
   - Set **thickness = 0.2 mm**
3. Assign the correct material:
   - `Modeler → Assign Material → Silicon`
   - Silicon properties affect thermal conductivity, heat capacity, and electrical characteristics.
4. Name the die geometry:
   - `Die`
   - Organize under **Material: Silicon** in the model tree for clarity.
5. Inspect the die in **3D visualization**:
   - Rotate, zoom, and check all faces.
   - Confirm the surface orientation for correct subsequent bonding.

> **Insight:** Correctly defining the die is critical as errors here propagate into all interconnects and thermal simulations.

<img width="1415" height="636" alt="Image" src="https://github.com/user-attachments/assets/17d94698-2773-4b97-a4ba-80dd43596210" />
<img width="1425" height="636" alt="Image" src="https://github.com/user-attachments/assets/286ca762-af96-4c7f-a5ae-f87d3e13a2a1" />
<img width="1417" height="636" alt="Image" src="https://github.com/user-attachments/assets/36c9fb40-13b2-43f0-84f1-c0dfbabceb71" />
---

## 🟢 Step 3: Create the Substrate Geometry

The substrate serves as the **mechanical base** and **electrical interconnection layer** for the die.

1. Draw a rectangle for the substrate:
   - **Length:** 5 mm  
   - **Width:** 5 mm  
   - Position to center the die (example: `-1, -1, -0.1 mm`)
2. Thicken the sheet:
   - `Thickness = 0.5 mm` (example based on package type)
3. Assign material:
   - Typically **copper** or **PCB-like composite material**
4. Rename rectangle as `Substrate` and group under **Material: Copper**
5. Verify stacking:
   - Ensure die is centered on the substrate in the 3D view.
   - Correct positioning avoids wire bond misalignment.

> **Tip:** Use orthographic and perspective views to check both top and side alignments.
<img width="1420" height="631" alt="Image" src="https://github.com/user-attachments/assets/82fbca99-673e-404e-9939-c39bf1bcdcba" />
<img width="1423" height="639" alt="Image" src="https://github.com/user-attachments/assets/1cb83e41-aabf-4b16-ae7c-7a13e394dcd9" />

---

## 🟢 Step 4: Add Die Attach Material (DAM)

The die attach material (DAM) ensures **mechanical adhesion and thermal transfer** between die and substrate.

1. Draw a rectangle **matching the die dimensions** at `(0,0,0)`.
2. Set **thickness = 0.1 mm**.
3. Assign material:
   - `Modified_epoxy` or similar thermally conductive adhesive.
4. Place the DAM **between die and substrate**.
5. Check alignment in 3D:
   - Ensure uniform coverage to avoid thermal hotspots in simulations.

> **Insight:** DAM thickness and thermal properties significantly impact thermal simulation results.

<img width="1423" height="638" alt="Image" src="https://github.com/user-attachments/assets/224c809a-9d82-4a66-a713-1f75c620d067" />
---

## 🟢 Step 5: Create Bond Pads

Bond pads provide **electrical connection points** between die and substrate.

### 5a: Die Bond Pads

1. Draw small rectangles on the die surface:
   - Dimensions: `0.2 mm x 0.2 mm`
   - Arrange along die periphery according to intended wire bond layout
2. Assign **conductive material** (Copper, Gold, or Aluminum)
3. Name each pad clearly (e.g., `DieBondPad1`, `DieBondPad2`) for clarity

### 5b: Substrate Bond Pads

1. Create matching rectangles on the substrate surface.
2. Assign same conductive material as die pads.
3. Organize the pads under a `BondPads` folder in the model tree for easy access.

> **Pro Tip:** Maintain consistent naming and numbering schemes for die and substrate pads to simplify wire bond connections.

---

## 🟢 Step 6: Create Wire Bonds

Wire bonds connect die pads to substrate pads, completing **electrical interconnects**.

1. Navigate to `Draw → Bondwire`.
2. Select corresponding die and substrate pads.
3. Define wire parameters:
   - **Material:** Gold (common for reliability and conductivity)
   - **Diameter:** 0.025 mm (example)
   - **Profile:** JEDEC 4-point (standard for mechanical reliability)
4. Inspect in 3D view:
   - Check for collisions, correct curvature, and alignment
5. Adjust wire orientation if necessary to avoid overlaps or stress points.

> **Insight:** Wire bond routing affects electrical resistance, inductance, and thermal dissipation.

<img width="1417" height="636" alt="Image" src="https://github.com/user-attachments/assets/230cf157-5bd8-48ac-a208-be237f141865" />
<img width="1424" height="641" alt="Image" src="https://github.com/user-attachments/assets/3aa7467c-19f3-4918-9b71-a62a35f28aad" />
---

## 🟢 Step 7: Apply Mold Compound

Mold compound encapsulates the die, wire bonds, and bond pads, providing **mechanical protection** and **environmental insulation**.

1. Draw a rectangular block covering all internal components.
2. Set thickness to **1.2 mm** (or sufficient to fully encapsulate components)
3. Assign material:
   - Epoxy molding compound or similar
   - Ensures accurate thermal and mechanical simulation
4. Inspect 3D coverage:
   - No gaps or overlaps should remain.
5. Organize under `MoldCompound` in the model tree.

> **Tip:** Use transparency and cross-sectional views to ensure all internal components are completely encapsulated.
<img width="1421" height="639" alt="Image" src="https://github.com/user-attachments/assets/09969026-e9ea-4302-adb6-06b981237a70" />
---

## 🟢 Step 8: Verify the Final Model

1. Rotate and inspect the complete package in 3D.
2. Confirm:
   - Die centered on substrate
   - DAM layer uniform
   - Wire bonds correctly connecting die and substrate pads
   - Mold compound fully encapsulates internal structures
3. Adjust any misalignments or geometry errors before proceeding to simulation.

---

<img width="1670" height="759" alt="Image" src="https://github.com/user-attachments/assets/9c4ffb24-cac1-418c-9417-2f714c5b7518" />


## 🟢 Step 9: Ready for Simulation

Once the package is fully modelled, it can be used for:

- **Thermal Analysis** (Icepak) – Heat distribution, hotspot evaluation
- **Electromagnetic Simulation** (HFSS) – Signal integrity, parasitic coupling
- **Electrical Connectivity Simulation** (Q3D) – Resistance, inductance, and capacitance of package interconnects

---

