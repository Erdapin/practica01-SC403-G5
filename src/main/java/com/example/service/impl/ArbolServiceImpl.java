/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

package com.example.service;
import com.example.dao.ArbolDao;
import com.example.domain.Arbol;
import com.example.service.ArbolService;
/**
 *
 * @author Lenovo
 */
public class ArbolServiceImpl implements ArbolService {
    @Autowired
    private ArbolDao arbolDao;

    @Override
    @Transactional(readOnly=true)
    public List<Categoria> getArbolData(boolean activos) {
        var lista=arbolDao.findAll();
        if (activos) {
           lista.removeIf(e -> !e.isActivo());
        }
        return lista;
    }
}
