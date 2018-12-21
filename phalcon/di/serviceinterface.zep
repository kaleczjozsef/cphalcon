
/*
 +------------------------------------------------------------------------+
 | Phalcon Framework                                                      |
 +------------------------------------------------------------------------+
 | Copyright (c) 2011-2017 Phalcon Team (http://www.phalconphp.com)       |
 +------------------------------------------------------------------------+
 | This source file is subject to the New BSD License that is bundled     |
 | with this package in the file LICENSE.txt.                             |
 |                                                                        |
 | If you did not receive a copy of the license and are unable to         |
 | obtain it through the world-wide-web, please send an email             |
 | to license@phalconphp.com so we can send you a copy immediately.       |
 +------------------------------------------------------------------------+
 | Authors: Andres Gutierrez <andres@phalconphp.com>                      |
 |          Eduar Carvajal <eduar@phalconphp.com>                         |
 +------------------------------------------------------------------------+
*/

namespace Phalcon\Di;

use Phalcon\DiInterface;

/**
 * Phalcon\Di\ServiceInterface
 *
 * Represents a service in the services container
 */
interface ServiceInterface
{
	/**
	 * Sets if the service is shared or not
	 */
	public function setShared(bool shared);

	/**
	 * Check whether the service is shared or not
	 */
	public function isShared() -> bool;

	/**
	 * Set the service definition
	 *
	 * @param mixed definition
	 */
	public function setDefinition(definition);

	/**
	 * Returns the service definition
	 *
	 * @return mixed
	 */
	public function getDefinition();

	/**
	 * Resolves the service
	 *
	 * @param array parameters
	 * @return mixed
	 */
	public function resolve(parameters = null, <DiInterface> dependencyInjector = null);

	/**
	 * Changes a parameter in the definition without resolve the service
	 */
	public function setParameter(int position, array! parameter) -> <ServiceInterface>;

	/**
	 * Returns a parameter in a specific position
	 *
	 * @return array
	 */
	public function getParameter(int position);

	/**
	 * Returns true if the service was resolved
	 */
	public function isResolved() -> bool;

	/**
	 * Restore the internal state of a service
	 */
	public static function __set_state(array! attributes) -> <ServiceInterface>;

}
