/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

package com.example.domain;
import jakarta.persistence.*;
import java.io.Serializable;
import lombok.Data;

@Data
@Entity
@Table (name="arbol")
public class Arbol implements Serializable {
    private static final int serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="id_arbol")

    private int id_arbol;
    private String nombre_comun;
    private String nombre_cientifico;
    private String ruta_imagen;
    private String tipo_flor;
    private int dureza_madera;
    private float altura_promedio;
}
