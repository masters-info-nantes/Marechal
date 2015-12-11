/*
 * generated by Xtext
 */
package org.collaboration.scoping

import org.collaboration.collaboration.Collaboration
import org.collaboration.collaboration.CollaborationUse
import org.collaboration.collaboration.Role
import org.collaboration.collaboration.RoleAffectation
import org.eclipse.emf.ecore.EReference
import org.eclipse.xtext.EcoreUtil2
import org.eclipse.xtext.scoping.IScope
import org.eclipse.xtext.scoping.Scopes
import org.eclipse.xtext.scoping.impl.AbstractDeclarativeScopeProvider

/**
 * This class contains custom scoping description.
 * 
 * See https://www.eclipse.org/Xtext/documentation/303_runtime_concepts.html#scoping
 * on how and when to use it.
 *
 */
class CollaborationScopeProvider extends AbstractDeclarativeScopeProvider {
	
	def IScope scope_RoleAffectation_host(RoleAffectation affect, EReference ref) {
		getCollabUseHostRoleScope(affect)
	}
	
	def IScope scope_RoleAffectation_use(RoleAffectation affect, EReference ref) {
		getCollabUseRoleScope(affect)
	}
	
	
	def IScope getCollabUseHostRoleScope(RoleAffectation use) {
		val parent = EcoreUtil2.getContainerOfType(use, Collaboration);
		val candidates = EcoreUtil2.getAllContentsOfType(parent, Role);
		Scopes.scopeFor(candidates)
	}
	
	def IScope getCollabUseRoleScope(RoleAffectation use) {
		val parent = EcoreUtil2.getContainerOfType(use, CollaborationUse);
		val candidates = EcoreUtil2.getAllContentsOfType(parent.collab, Role);
		Scopes.scopeFor(candidates)
	}
}
