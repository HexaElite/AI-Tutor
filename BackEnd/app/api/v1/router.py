from fastapi import APIRouter
from app.api.v1.endpoints import courses, modules, lessons, documents, document_courses

# Create the v1 router
router = APIRouter(prefix="/api/v1", tags=["v1"])

# Include all endpoint routers
router.include_router(courses.router)
router.include_router(modules.router)
router.include_router(lessons.router)
router.include_router(documents.router, prefix="/documents")
router.include_router(document_courses.router, prefix="/document-courses")
