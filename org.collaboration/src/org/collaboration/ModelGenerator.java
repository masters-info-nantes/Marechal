package org.collaboration;

import java.io.IOException;

import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.ecore.xmi.impl.EcoreResourceFactoryImpl;
import org.eclipse.xtext.resource.XtextResourceSet;

public class ModelGenerator {

    /**
     * @param args Nom du fichier DSL (par exemple, test.collab) pour lequel générer un xmi.
     */
    public static void main(String[] args) {
        CollaborationStandaloneSetup.doSetup();
        XtextResourceSet resourceSet = new XtextResourceSet();
        URI uri = URI.createURI(args[0]);
        Resource xtextResource = resourceSet.getResource(uri , true);
        Resource xmiResource = new EcoreResourceFactoryImpl().createResource(URI.createURI("atl_input.xmi"));
        xmiResource.getContents().add(xtextResource.getContents().get(0));
        try {
            xmiResource.save(null);
        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
               
    }

}
