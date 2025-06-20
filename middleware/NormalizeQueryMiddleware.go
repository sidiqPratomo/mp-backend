package middleware

import (
	"github.com/gin-gonic/gin"
	"net/url"
	"strings"
)

func NormalizeQuery() gin.HandlerFunc {
	return func(c *gin.Context) {
		rawQuery := c.Request.URL.RawQuery
		parsedQuery, _ := url.ParseQuery(rawQuery)
		newQuery := url.Values{}

		for key, vals := range parsedQuery {
			// normalize !key → key
			if strings.HasPrefix(key, "!") {
				newQuery[strings.TrimPrefix(key, "!")] = vals
			} else {
				newQuery[key] = vals
			}
		}

		c.Request.URL.RawQuery = newQuery.Encode()
		c.Next()
	}
}
