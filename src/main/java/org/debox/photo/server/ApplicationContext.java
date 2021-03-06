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
package org.debox.photo.server;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import org.debox.photo.dao.ConfigurationDao;
import org.debox.photo.model.Configuration;
import org.debox.photo.util.DatabaseUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * @author Corentin Guy <corentin.guy@debox.fr>
 */
public class ApplicationContext {
    
    private static final Logger logger = LoggerFactory.getLogger(ApplicationContext.class);

    protected static ConfigurationDao configurationDao = new ConfigurationDao();
    protected static ApplicationContext instance = new ApplicationContext();
    protected static Configuration configuration;
    
    protected static boolean configured = false;

    protected ApplicationContext() {
        // Nothing to do
    }

    public static ApplicationContext getInstance() {
        return instance;
    }
    
    public static void setConfigured(boolean b) {
        configured = b;
    }
    
    public static boolean isConfigured() {
        return configured;
    }

    public Configuration saveConfiguration(Configuration configuration) throws SQLException {
        configurationDao.save(configuration);
        ApplicationContext.configuration = configuration;
        return configuration;
    }

    public Configuration saveUserConfiguration(String userId, Configuration configuration) throws SQLException {
        configurationDao.saveUserConfiguration(userId, configuration);
        return configuration;
    }

    public Configuration getOverallConfiguration() {
        if (configuration == null) {
            try {
                configuration = configurationDao.getOverallConfiguration();
            } catch (SQLException ex) {
                logger.error("Unable to load configuration from database", ex);
            }
        }
        return configuration;
    }

    public Configuration getUserConfiguration(String userId) throws SQLException {
        return configurationDao.getUserConfiguration(userId);
    }
}
