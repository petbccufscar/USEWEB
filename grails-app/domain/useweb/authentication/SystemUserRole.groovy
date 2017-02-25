package useweb.authentication

import grails.gorm.DetachedCriteria
import groovy.transform.ToString

import org.apache.commons.lang.builder.HashCodeBuilder

@ToString(cache=true, includeNames=true, includePackage=false)
class SystemUserRole implements Serializable {

	private static final long serialVersionUID = 1

	SystemUser systemUser
	Role role

	@Override
	boolean equals(other) {
		if (other instanceof SystemUserRole) {
			other.systemUserId == systemUser?.id && other.roleId == role?.id
		}
	}

	@Override
	int hashCode() {
		def builder = new HashCodeBuilder()
		if (systemUser) builder.append(systemUser.id)
		if (role) builder.append(role.id)
		builder.toHashCode()
	}

	static SystemUserRole get(long systemUserId, long roleId) {
		criteriaFor(systemUserId, roleId).get()
	}

	static boolean exists(long systemUserId, long roleId) {
		criteriaFor(systemUserId, roleId).count()
	}

	private static DetachedCriteria criteriaFor(long systemUserId, long roleId) {
		SystemUserRole.where {
			systemUser == SystemUser.load(systemUserId) &&
			role == Role.load(roleId)
		}
	}

	static SystemUserRole create(SystemUser systemUser, Role role) {
		def instance = new SystemUserRole(systemUser: systemUser, role: role)
		instance.save()
		instance
	}

	static boolean remove(SystemUser u, Role r) {
		if (u != null && r != null) {
			SystemUserRole.where { systemUser == u && role == r }.deleteAll()
		}
	}

	static int removeAll(SystemUser u) {
		u == null ? 0 : SystemUserRole.where { systemUser == u }.deleteAll()
	}

	static int removeAll(Role r) {
		r == null ? 0 : SystemUserRole.where { role == r }.deleteAll()
	}

	static constraints = {
		role validator: { Role r, SystemUserRole ur ->
			if (ur.systemUser?.id) {
				SystemUserRole.withNewSession {
					if (SystemUserRole.exists(ur.systemUser.id, r.id)) {
						return ['userRole.exists']
					}
				}
			}
		}
	}

	static mapping = {
		id composite: ['systemUser', 'role']
		version false
	}
}
