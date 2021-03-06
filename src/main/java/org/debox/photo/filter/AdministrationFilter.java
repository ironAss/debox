/*
 * #%L
 * debox-photos
 * %%
 * Copyright (C) 2012 Debox
 * %%
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Affero General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 * 
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU Affero General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 * #L%
 */
package org.debox.photo.filter;

import java.net.HttpURLConnection;
import org.apache.shiro.SecurityUtils;
import org.debox.photo.model.user.User;
import org.debox.photo.util.SessionUtils;
import org.debux.webmotion.server.WebMotionFilter;
import org.debux.webmotion.server.render.Render;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * @author Corentin Guy <corentin.guy@debox.fr>
 */
public class AdministrationFilter extends WebMotionFilter {
    
    protected static final Logger log = LoggerFactory.getLogger(AdministrationFilter.class);

    public Render checkUserSession() {
        if (SessionUtils.isAdministrator(SecurityUtils.getSubject())) {
            doProcess();
            return null;
        }
        User user = SessionUtils.getUser(SecurityUtils.getSubject());
        log.error("User {} ({}) is not an administrator", user.getFirstName(), user.getId());
        return renderError(HttpURLConnection.HTTP_FORBIDDEN, "You must be logged-in."); 
    }

    public Render checkUserAuthentication() {
        if (SessionUtils.isLogged(SecurityUtils.getSubject())) {
            doProcess();
            return null;
        }
        return renderError(HttpURLConnection.HTTP_FORBIDDEN, "You must be logged-in."); 
    }
    
}
